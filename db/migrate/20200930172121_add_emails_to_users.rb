# frozen_string_literal: true

# class for adding emails to respective user accounts
class AddEmailsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :email, :string
  end
end
