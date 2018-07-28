class CreateTaskStdVals < ActiveRecord::Migration[5.2]
  def change
    create_table :task_std_vals do |t|
      t.string :task_name
      t.integer :task_val

      t.timestamps
    end
  end
end
