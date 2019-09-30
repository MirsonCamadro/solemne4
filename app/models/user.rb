class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  after_create :load_task
  has_many :todos
  has_many :tasks, through: :todos

  def load_task
    Task.all.each do |task|
      Task.create(
        task_id: task.id,
        user_id: self.id
      )
    end
  end


end
