class CreateTops < ActiveRecord::Migration[5.2]
  def change
    create_table :tops do |t|
      t.string :emp_id
      t.string :name
      t.integer :age
      t.integer :pay

      t.timestamps
    end
  end
end
