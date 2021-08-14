class CountriesController < PlansController
  before_action :user_plan, only: [:edit, :update]
  def new
    @plan = Plan.new
    countries
  end

  def create
    @plan = Plan.new(plans_params)
    if @plan.save
      current_user.update!(status: 1)
      redirect_to edit_plan_day_path, success: t('.success')
    else
      redirect_to new_plan_country_path, danger: t('.fail')
    end
  end

  def edit
    countries
  end

  def update
    @plan.update!(plans_params) 
    redirect_to plan_path, success: t('.success')
  end

  private

  def countries
    @north_america = Settings.north_america
    @south_america = Settings.south_america
    @asia = Settings.asia
    @middle_east = Settings.middle_east
    @oceania = Settings.oceania
    @europe = Settings.europe
    @africa = Settings.africa
  end

end

