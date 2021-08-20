class DaysController < PlansController
  before_action :user_plan
  def edit; end

  def update
    if @plan.departure_date.present?
      if @plan.update(plans_params)
        redirect_to plan_path, success: t('.success')
      else
        render :edit
      end
    else
      if @plan.update(plans_params) && current_user.update(status: 2)
        redirect_to step3_home_path, success: t('.success')
      else
        render :edit
      end
    end
  end
end

