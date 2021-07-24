class DaysController < PlansController
  before_action :user_plan
  def edit; end

  def update
    if @plan.update(plans_params)
      if @plan.departure_date.present?
        redirect_to plan_path, success: t('.success')
      else
        redirect_to step3_home_path, success: t('.success')
      end
    end
  end
end

