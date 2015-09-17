class User < ActiveRecord::Base
  has_attached_file :avatar, styles: { medium: '200x200>', thumb: '100x100>' }
  has_many :statements
  belongs_to :race
  validates_attachment_file_name :avatar, matches: [/png\Z/, /jpe?g\Z/]
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  acts_as_followable
  acts_as_follower
  validates_presence_of :first_name, :if => :active_or_first_name?
  validates_presence_of :last_name, :if => :active_or_last_name?
  validates_presence_of :bio, :if => :active_or_bio?
  validates_presence_of :avatar || :profile_image, :if => :active_or_avatar_or_profile_image?
  validates_presence_of :party, :if => :active_or_party?

  ROLES = %w(voter admin candidate)

  # pulls all the statements by the candidate from the db for that issue.
  def statement_by_issue(issue)
    statements.joins(:issues).where('issues.name = ?', issue).first.try(:stance)
  end

  # method for easily setting a stance to an issue. If the issue isn't in the db, it creates it.
  def statement_for_issue(stance, issue)
    Issue.find_or_create_by(name: issue).statements << Statement.create(stance: stance, user_id: id)
  end

  def full_name
    first_name + ' ' + last_name
  end

  def position
    if legislator == 'Rep'
      'Rep.' + ' ' + full_name
    elsif legislator == 'Sen'
      'Sen.' + ' ' + full_name
    else
      full_name
    end
  end

  def active?
    status == 'active'
  end

  def active_or_first_name?
    status.include?('name') || active?
  end

  def active_or_last_name?
    status.include?('name') || active?
  end

  def active_or_bio?
    status.include?('name') || active?
  end

  def active_or_avatar_or_profile_image?
    status.include?('name') || status.include?('profile_image') || active?
  end

  def active_or_party?
    status.include?('party') || active?
  end

end
