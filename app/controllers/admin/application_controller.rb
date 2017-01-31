class Admin::ApplicationController < ApplicationController
  before_action :authenticate_user!

  layout 'admin'

	protected
  
  def authenticate_user!
    redirect_to new_admin_user_session_path unless current_admin_user
  end
end
