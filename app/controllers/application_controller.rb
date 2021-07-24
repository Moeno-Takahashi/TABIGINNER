class ApplicationController < ActionController::Base
  add_flash_types :success, :danger
  def user_plan
    @user = current_user
    @plan = @user.plan
  end
end
