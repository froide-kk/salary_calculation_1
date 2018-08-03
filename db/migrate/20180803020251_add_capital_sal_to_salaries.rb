class AddCapitalSalToSalaries < ActiveRecord::Migration[5.2]
  def change
    add_column :salaries, :capital_sal, :integer
  end
end
