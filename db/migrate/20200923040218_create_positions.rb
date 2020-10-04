class CreatePositions < ActiveRecord::Migration[6.0]
  def change
    create_table :positions do |t|
      t.string :position_id
      t.integer :multiplier
      t.string :position_title

      t.timestamps
    end
  end
end
