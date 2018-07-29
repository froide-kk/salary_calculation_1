class CreatePoints < ActiveRecord::Migration[5.2]
  def change
    create_table :points do |t|
      t.string :emp_id
      t.integer :age_ad, default: 0
      t.integer :isms, default: 0
      t.integer :health, default: 0
      t.integer :small_group, default: 0
      t.integer :eval_mgm, default: 0
      t.integer :eval_tec, default: 0
      t.integer :adjustment, default: 0
      t.boolean :is_short_work, default: false
      t.integer :overtime, default: 0

      t.timestamps
    end
  end
end
