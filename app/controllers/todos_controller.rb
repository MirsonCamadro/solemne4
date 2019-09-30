class TodosController < ApplicationController
before_action :authenticate_user!
before_action :find_todo, only: [:show, :update]

  def index
    @todos = current_user.todos
  end

  def show
    @task = @todo_who.task
    @todos_completed = Todo.where(task_id: @task.id, completed: true)
  end

  def update
    @todo_who.completed = !@todo_who.completed
    @todo_who.save
    redirect_to todos_path
  end

  private
  
  def find_todo
    @todo_who = Todo.find(params[:todo_id])
  end



end
