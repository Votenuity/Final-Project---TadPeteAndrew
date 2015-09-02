class User < ActiveRecord::Base
  has_attached_file :avatar, styles: {medium: "300x300>", thumb: "100x100>"}
  has_many :statements
  before_create :set_default_role
  validates_attachment_file_name :avatar, matches: [/png\Z/, /jpe?g\Z/]
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  ROLES = %w[voter admin candidate]

  def statements_by_issue(issue)
    self.statements.joins(:issues).where("issues.name = ?", issue)
  end


  private

  def set_default_role
    self.role = "voter"
  end
end
