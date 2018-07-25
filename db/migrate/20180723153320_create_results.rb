class CreateResults < ActiveRecord::Migration[5.2]
  def change
    create_table :results do |t|
      t.integer :result_id
      t.string :name
      t.integer :age

      t.timestamps
    end
  end
end
