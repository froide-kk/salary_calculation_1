class AddCapitalValToEtcStdVals < ActiveRecord::Migration[5.2]
  def change
    add_column :etc_std_vals, :capital_val, :integer
  end
end
