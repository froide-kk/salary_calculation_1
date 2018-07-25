class AddPositionToTops < ActiveRecord::Migration[5.2]
  def change
    add_column :tops, :position, :string
  end
end
