class ApplicationController < ActionController::Base
  include Pundit
  add_flash_types :success, :danger
  before_action :require_login

  protected

  def user_plan
    @user = current_user
    @plan = @user.plan
  end

  def rescue401
    begin
      authorize @user
    rescue Pundit::NotAuthorizedError
      render template: 'errors/401', status: 401
    end
  end

  def remain_days
    today = Date.today
    dead_line = current_user.plan.departure_date  
    remain = (dead_line - today).to_i
  end

end
