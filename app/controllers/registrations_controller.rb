class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(_resource)
    '/sign_up_steps'
  end

  def after_sign_out_path_for(_resource)
    root_path
  end
end
