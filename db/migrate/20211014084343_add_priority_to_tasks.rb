class AddPriorityToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :priority_task, :boolean
  end
end
