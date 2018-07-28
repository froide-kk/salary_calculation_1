class CreatePoints < ActiveRecord::Migration[5.2]
  def change
    create_table :points do |t|
      t.string :emp_id
      t.integer :age_ad
      t.integer :isms
      t.integer :health
      t.integer :small_group
      t.integer :eval_mgm
      t.integer :eval_tec
      t.integer :adjustment
      t.boolean :is_short_work
      t.integer :overtime

      t.timestamps
    end
  end
end
