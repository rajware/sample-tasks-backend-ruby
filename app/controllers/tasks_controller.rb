class TasksController < ApplicationController
    def index
        @tasks = Task.all 
        render json: Helpers::ApiResult.new(@tasks)
    end

    def show
        @task = Task.find(params[:id])
        render json:  Helpers::ApiResult.new(@task)
    end 

    def create
        @task = Task.create(
            description: params[:description],
            deadline: params[:deadline],
            completed: false
        )
        render json: Helpers::ApiResult.new(@task)
    end 

    def update
        @task = Task.find(params[:id])
        @task.update(
            description: params[:description],
            deadline: params[:deadline],
            completed: params[:completed]
        )
        render json: Helpers::ApiResult.new(@task)
    end 

    def destroy
        @task = Task.find(params[:id])
        @task.destroy
        render json: Helpers::ApiResult.new(@task)
    end
end
