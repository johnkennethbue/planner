class TasksController < ApplicationController
    before_action :set_task, only: [:show, :edit, :update, :destroy]

    def index
      @categories_all = Category.all
      @tasks = Task.all
      @categories = current_user.categories.task
    end
  
    def show
    end
  
    def new
        @task = current_user.tasks.build
    end


    def edit
    end
  
    def create
        @task = current_user.tasks.build(task_params)
        if @task.save
          redirect_to user_task_path(current_user, @task)
          flash[:notice] = "New Task '#{@task.title}' has been created."
        else
          render :new
        end
      end
  
    def update
     
        if @task.update(task_params)
          redirect_to user_task_path(current_user, @task)
          flash[:notice] = "Task '#{@task.title}' has been updated."
        else
          render :edit 
        end
      end
  

    def destroy
       @task.destroy
        redirect_to "/" 
        flash[:notice] = "Task '#{@task.title}' has been deleted."
      end

    private
      def set_task
        @task = Task.find(params[:id])
      end

      def task_params
        params.require(:task).permit(:title, :description, :start_date, :due_date, :completed, :category_id, :user_id, :priority_task)
      end
    end
