class UserTasksController < ApplicationController

  def create
    @task = Task.find(params[:task_id])
    current_user.checked(@task)
  end


  def destroy
    @task = current_user.user_tasks.find(params[:id]).task
    current_user.unchecked(@task)
  end

end

