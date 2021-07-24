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
end
