class CreateEvaluationStdVals < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluation_std_vals do |t|
      t.string :eval_name
      t.integer :eval_val

      t.timestamps
    end
  end
end
