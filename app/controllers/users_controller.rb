class UsersController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]
  before_action :user_plan, only: [:show, :edit, :update]
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    
    if @user.save
      auto_login(@user)
      redirect_to step1_home_path, success: t('.success')
    else
      flash.now[:danger] = t('.fail')
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    if current_user.update(user_params)
      redirect_to user_path, success: t('.success')
    else
      flash.now[:danger] = t('.fail')
      render :edit
    end
  end

  def destroy
    @user = current_user
    @user.destroy!
    logout
    redirect_to root_path, success: t('.success')
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :birthday, :user_image, :sex )
  end
end
