class TasksController < ApplicationController
  def user_tasks
      user_plan
      @task = Task.new
      @my_task = current_user.tasks.my_task.includes([:user_tasks]) 
      @passport_task = Task.passport_task.includes([:user_tasks])
      @schedule_task = Task.schedule_task.includes([:user_tasks])
      @visa_task = Task.visa_task.includes([:user_tasks])
      @airticket_task = Task.airticket_task.includes([:user_tasks])
      @vaccination_task = Task.vaccination_task.includes([:user_tasks])
      @money_task = Task.money_task.includes([:user_tasks])
      @internet_task = Task.internet_task.includes([:user_tasks])
      @crime_task = Task.crime_task.includes([:user_tasks])
      @insurance_task = Task.insurance_task.includes([:user_tasks])
      @hostel_task = Task.hostel_task.includes([:user_tasks])
      @belongings_task = Task.belongings_task.includes([:user_tasks])
      @app_task = Task.app_task.includes([:user_tasks])
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      flash[:success] = t('.success')
      redirect_to user_tasks_path
    else
      flash[:danger] = t('.fail')
      redirect_to user_tasks_path
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy! 
    flash[:success] = t('.success')
    redirect_to user_tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:user_id, :title, :body, :category_id)
  end
end
