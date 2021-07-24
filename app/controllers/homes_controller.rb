class HomesController < ApplicationController
  skip_before_action :require_login, only: [:index, :line_add_friends, :terms_of_use, :usage]
  before_action :user_plan, only: [:step1, :step2, :step3, :step4, :step5, :advice]

  def index
    if logged_in?
      redirect_to user_path
    end
  end

  def step1; end

  def step2; end

  def step3; end

  def step4; end

  def step5
    @remain_days = remain_days
  end

  def usage; end

  def advice; end

  def terms_of_use; end
end
