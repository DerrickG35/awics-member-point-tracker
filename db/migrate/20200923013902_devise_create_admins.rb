# frozen_string_literal: true

# class for creating admins that are able to access the curent dashboard page
# part of the devise ecosystem, has a table that store each user permission account
class DeviseCreateAdmins < ActiveRecord::Migration[6.0]
  def change
    create_table :admins do |t|
      t.string :email, null: false
      t.string :full_name
      t.string :uid
      t.string :avatar_url

      t.timestamps null: false
    end

    add_index :admins, :email, unique: true
  end
end
