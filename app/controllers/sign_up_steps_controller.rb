class SignUpStepsController < ApplicationController
  include Wicked::Wizard
  steps :name, :bio, :profile_picture

  def update
    @user = current_user
    @user.attributes = user_params
    render_wizard @user
  end

  def show
    @user = current_user
    render_wizard
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :user_name, :bio, :avatar_file_name)
  end

  def finish_wizard_path
    root_path(current_user)
  end

  def redirect_to_finish_wizard(options = nil)
    redirect_to finish_wizard_path
  end

end
