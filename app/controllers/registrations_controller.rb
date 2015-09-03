class RegistrationsController < Devise::RegistrationsController

  def show
    @races = Race.all
  end

  def edit
    @races = Race.all
  end

  protected

  def after_sign_up_path_for(resource)
    '/sign_up_steps'
  end
end
