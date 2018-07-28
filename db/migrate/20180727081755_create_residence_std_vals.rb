class CreateResidenceStdVals < ActiveRecord::Migration[5.2]
  def change
    create_table :residence_std_vals do |t|
      t.string :residence_name
      t.integer :residence_spt_val

      t.timestamps
    end
  end
end
