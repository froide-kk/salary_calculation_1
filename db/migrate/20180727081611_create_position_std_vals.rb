class CreatePositionStdVals < ActiveRecord::Migration[5.2]
  def change
    create_table :position_std_vals do |t|
      t.string :position_name
      t.integer :ability_val
      t.integer :max_overtime
      t.integer :pos_val
      t.integer :pos_inc_val
      t.integer :pos_std_age
      t.column :employee_id

      t.timestamps
    end
  end
end
