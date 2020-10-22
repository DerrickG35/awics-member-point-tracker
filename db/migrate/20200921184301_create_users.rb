# frozen_string_literal: true

# class for creating active student users in the main database
class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :position_id
      t.integer :member_points
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
