class SignUpStepsController < ApplicationController
  include Wicked::Wizard
  steps :first_name, :last_name, :user_name, :profile_picture

  def show
    @user = current_user
    render_wizard
  end
end
