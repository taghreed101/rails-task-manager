class TasksController < ApplicationController
  def tasks
   
@tasks=Task.all

  end

  def show
   
    byebug
    @task=Task.find(params["id"])
    if @task.completed
      @massege="This task is completed"
    else
      @massege="This task is not completed yet!"
    end

  end

  def new
    
    # @tasks=Task.all
    
  end
  def create
 
  @task = Task.new(task_params) 
    @task.save 
      redirect_to tasks_path
     end

def edit
  byebug
  @task = Task.find(params[:id]) 
  
end
  
def update
  
#   # @task = Task.find(params[:id]) 
#   @task = Task.new

# @task.id =params["id"]
# @task.reload
byebug
@task = Task.find(params[:id])
  @task.update(title: params[:task][:title], details: params[:task][:details],completed:params[:task][:completed])
  redirect_to "/tasks/#{params[:id]}"
end   
  private def task_params 
    
      params.require(:task).permit(:title, :details) 
    end
end
