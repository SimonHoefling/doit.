class AddLocationToTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :location, :string
  end
end
