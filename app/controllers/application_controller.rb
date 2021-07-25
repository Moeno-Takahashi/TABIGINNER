class ApplicationController < ActionController::Base
  add_flash_types :success, :danger
  before_action :require_login

  protected

  def remain_days
    today = Date.today
    dead_line = current_user.plan.departure_date  
    remain = (dead_line - today).to_i
  end

  def user_plan
    @user = current_user
    @plan = @user.plan
  end
end
