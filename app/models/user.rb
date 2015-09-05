class User < ActiveRecord::Base
  has_attached_file :avatar, styles: {medium: "300x300>", thumb: "100x100>"}
  has_many :statements
  belongs_to :race
  validates_attachment_file_name :avatar, matches: [/png\Z/, /jpe?g\Z/]
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  acts_as_followable
  acts_as_follower


  ROLES = %w[voter admin candidate]

  #pulls a the statements by the candidate from the db from that issue.
  def statement_by_issue(issue)
    self.statements.joins(:issues).where("issues.name = ?", issue).first.try(:stance)
  end

  #method for easily setting a stance to an issue. If the issue isn't in the db, it creates it.
  def statement_for_issue(stance, issue)
    Issue.find_or_create_by(name: issue).statements << Statement.create(stance: stance, user_id: self.id)
  end

  def full_name
    self.first_name + " " + self.last_name
  end

  def position
    if self.legislator == "Rep"
      "Rep." + " " + full_name
    elsif self.legislator == "Sen"
      "Sen." + " " + full_name
    else
      full_name
    end
  end

end
