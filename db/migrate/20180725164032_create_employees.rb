class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :emp_id
      t.string :name
      t.date :birth
      t.integer :age
      t.string :judgment
      t.string :department
      t.string :task
      t.string :residence
      t.integer :fam_spouse
      t.integer :fam_except_spouse
      t.string :position

      t.timestamps
    end
  end
end
