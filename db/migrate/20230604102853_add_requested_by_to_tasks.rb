class AddRequestedByToTasks < ActiveRecord::Migration[7.0]
  def change
    add_reference :tasks, :requested_by, foreign_key: { to_table: :users }
  end
end
