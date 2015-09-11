class SignUpStepsController < ApplicationController
  include Wicked::Wizard
  steps :name, :party

  def update
    @user = current_user
    params_hash = user_params
    Rails.logger.info params_hash.inspect
    params_hash[:status] = step.to_s
    params_hash[:status] = 'active' if step == steps.last
    @user.update_attributes(params_hash)
    render_wizard @user
  end

  def show
    @user = current_user
    render_wizard
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :bio, :avatar, :profile_image, :party)
  end

  def finish_wizard_path
    root_path(current_user)
  end

  def redirect_to_finish_wizard(options = nil)
    redirect_to finish_wizard_path
  end

end
