
class UserSessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]
  
  def new
    @user = User.new
    if logged_in?
      redirect_to user_path
    end
  end

  def create
    if @user = login(params[:email], params[:password])
      if current_user.add_line_friend?
       redirect_to step5_home_path, success: t('.success')
      elsif current_user.departure_date_decided?
       redirect_to step4_home_path, success: t('.success')
      elsif current_user.days_decided?
       redirect_to step3_home_path, success: t('.success')
      elsif current_user.country_decided?
       redirect_to step2_home_path, success: t('.success')
      elsif current_user.not_plan?
       redirect_to step1_home_path, success: t('.success')
      end
    else
      flash[:danger] = t('.fail')
      render :new
    end
  end

  def destroy
    logout
    redirect_to root_path
  end
end
