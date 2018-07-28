class CreateSalaries < ActiveRecord::Migration[5.2]
  def change
    create_table :salaries do |t|
      t.string :emp_id
      t.integer :standard_sal
      t.integer :ability_sal
      t.integer :position_sal
      t.integer :task_sal
      t.integer :praise_sal
      t.integer :residence_spt_sal
      t.integer :basic_sal
      t.integer :hour_sal
      t.integer :over_hour_sal
      t.integer :over_sal
      t.integer :fam_sal
      t.integer :total_sal
      t.integer :last_total_sal
      t.integer :diff_total_sal
      t.float :rate
      t.integer :last_hour_sal
      t.integer :diff_hour_sal
      t.float :last_rate

      t.timestamps
    end
  end
end
