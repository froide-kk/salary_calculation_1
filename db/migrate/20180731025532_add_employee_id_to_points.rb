class AddEmployeeIdToPoints < ActiveRecord::Migration[5.2]
  def change
    add_column :points, :employee_id, :bigint, null: false
  end
end
