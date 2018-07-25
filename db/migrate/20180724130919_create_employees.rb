class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :emp_id
      t.string :name
      t.integer :age
      t.date :birth
      t.string :residence
      t.string :family
      t.string :department
      t.string :rank

      t.timestamps
    end
  end
end
