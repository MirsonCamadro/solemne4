class TodosController < ApplicationController
before_action :authenticate_user!

  def index
    @todos = current_user.tasks
  end

  def show
    todo = Todo.find(params[:todo_id])
    @task = todo.task
    @todos_completed = Todo.where(task_id: @task.id, completed: true)
  end
end
