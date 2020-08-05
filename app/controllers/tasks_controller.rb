class TasksController < ApplicationController
    before_action :find_task, only: [:show, :update, :delete]
    def index
        @tasks = Task.all.reverse
        @task = Task.new
    end

    def show
    end
    
    def create
        Task.create(task_params)
        redirect_to tasks_path
    end
    
    def update
        @task.update(task_params)
        redirect_to task_path(@task)
    end
    
    def delete
        @task.destroy
        redirect_to tasks_path
    end
    
    private
    
    def find_task
        @task = Task.find(params[:id])
    end

    def task_params
        params.require(:task).permit(:title, :details, :completed)
    end
end
