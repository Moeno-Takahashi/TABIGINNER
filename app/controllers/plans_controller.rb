class PlansController < UsersController
  before_action :user_plan

  def show
    @country = @plan.country.delete('["]')
  end

  def destroy
    @task = current_user.user_task_tasks
    @item = current_user.user_item_items
    @plan.destroy! && @task.destroy_all && @item.destroy_all
    redirect_to step1_home_path
  end

  private

  def plans_params
    params.fetch(:plan, {}).permit(:user_id, :days, :departure_date, country: [] )
  end
  
end