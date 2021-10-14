class TasksController < ApplicationController
    before_action :set_task, only: [:show, :edit, :update, :destroy]

    # GET /tasks
    # GET /tasks.json
    def index
      @tasks = Task.all
      @categories = current_user.categories.task
    end
  
    # GET /tasks/1
    # GET /tasks/1.json
    def show
    end
  
    # GET /tasks/new
    def new
        @task = current_user.tasks.build
    end
  
    # GET /tasks/1/edit
    def edit
    end
  
    # POST /tasks
    # POST /tasks.json
    def create
        @task = current_user.tasks.build(task_params)
        if @task.save
          redirect_to user_task_path(current_user, @task)
          flash[:notice] = "New Task '#{@task.title}' has been created."
        else
          render :new
        end
      end
  
    # PATCH/PUT /tasks/1
    # PATCH/PUT /tasks/1.json
    def update
     
        if @task.update(task_params)
          redirect_to "/"
          flash[:notice] = "Task '#{@task.title}' has been updated."
        else
          render :edit 
        end
      end
  
    # DELETE /tasks/1
    # DELETE /tasks/1.json
    def destroy
       @task.destroy
        redirect_to "/" 
        flash[:notice] = "Task '#{@task.title}' has been deleted."
      end
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_task
        @task = Task.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def task_params
        params.require(:task).permit(:title, :description, :start_date, :due_date, :completed, :category_id, :user_id, :priority_task)
      end
    end
