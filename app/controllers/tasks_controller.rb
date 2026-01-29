class TasksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_project

  def create
    @task = @project.tasks.new(task_params)

    if @task.save
      redirect_to @project
    else
      render "projects/show"
    end
  end

  def update
    @task = @project.tasks.find(params[:id])
    @task.update(task_params)
    redirect_to @project
  end

  private

  def set_project
    @project = current_user.projects.find(params[:project_id])
  end

  def task_params
    params.require(:task).permit(:title, :status)
  end
end
