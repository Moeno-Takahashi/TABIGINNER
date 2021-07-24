class PlansController < UsersController
  before_action :user_plan

  def show; end

  private

  def plans_params
    params.fetch(:plan, {}).permit(:user_id, :days, :departure_date, country: [] )
  end
  
end