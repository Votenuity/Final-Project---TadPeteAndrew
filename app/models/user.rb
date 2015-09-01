class User < ActiveRecord::Base
  has_many :statements
  before_create :set_default_role
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
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
