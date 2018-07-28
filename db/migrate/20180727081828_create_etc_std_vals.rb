class CreateEtcStdVals < ActiveRecord::Migration[5.2]
  def change
    create_table :etc_std_vals do |t|
      t.integer :praise_val
      t.float :mon_avg_worktime
      t.float :mon_short_worktime
      t.integer :holiday_val
      t.integer :std_salary_val

      t.timestamps
    end
  end
end
