class AddPointsColumn < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :member_points, :integer
  end
end
