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
      if @user.plan.present?
        if @user.plan.days.present?
          if @user.plan.departure_date.present?
            if @user.line_user.present?
              redirect_to step5_home_path, success: t('.success')
            else
              redirect_to step4_home_path, success: t('.success')
            end  
          else
            redirect_to step3_home_path, success: t('.success')
          end
        else
          redirect_to step2_home_path, success: t('.success')
        end
      else
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
