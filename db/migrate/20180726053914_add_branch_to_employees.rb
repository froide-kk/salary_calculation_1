class AddBranchToEmployees < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :branch, :string
  end
end
