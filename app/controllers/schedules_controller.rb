class SchedulesController < PlansController
  before_action :user_plan
  def edit; end

  def update
    if current_user.line_user.present?
      if @plan.update(plans_params)
        redirect_to step5_home_path, success: t('.success')
      else
        render :edit
      end
    else
      if @plan.update(plans_params) && current_user.update(status: 3)
        redirect_to step4_home_path, success: t('.success')
      else
        render :edit
      end
    end
  end
end
