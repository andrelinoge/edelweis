class Admin::UsersController < Admin::ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def edit
  end
  
  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to admin_user_url(@user), notice: 'User was successfully created.'
    else
      render :new
    end
  end

  def update
    if @user.update(user_params)
      redirect_to admin_user_url(@user), notice: 'User was successfully updated.' 
    else
      render :edit
    end
  end

  def destroy
    @user.destroy if User.count > 1
    redirect_to admin_users_url, notice: 'User was successfully destroyed.'
  end

  private
    
    def set_user
      @user = User.find(params[:id])
    end

    
    def user_params
      if params[:user][:password].blank?
        params[:user].delete(:password)
        params[:user].delete(:password_confirmation)
      end
      
      params.require(:user).permit(:email, :password, :password_confirmation)
    end

end