class SchedulesController < PlansController
  before_action :user_plan
  def edit; end

  def update
    if @plan.update(plans_params)
      if current_user.line_user.present?
        redirect_to step5_home_path, success: t('.success')
      else
        redirect_to step4_home_path, success: t('.success')
      end
    end
  end
end
