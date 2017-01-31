class Admin::SessionsController < Devise::SessionsController
  layout "admin_sign_in"

  def after_sign_in_path_for(resource)
    # sign_in current_admin_user
    admin_path
  end
end
