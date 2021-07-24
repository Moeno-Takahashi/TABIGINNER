class ApplicationController < ActionController::Base
  def user_plan
    @user = current_user
    @plan = @user.plan
  end
end
