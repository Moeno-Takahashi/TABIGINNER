class UserPolicy < ApplicationPolicy
  def step1?
    user.not_plan?
  end

  def step2?
    user.country_decided?
  end

  def step3?
    user.days_decided?
  end

  def step4?
    user.departure_date_decided?
  end

  def step5?
    user.add_line_friend?
  end
end