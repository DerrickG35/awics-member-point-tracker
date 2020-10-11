# frozen_string_literal: true

# class for tracking the attendance and points of users
class ChangeColumnNameInAttendance < ActiveRecord::Migration[6.0]
  def change
    rename_column :attendances, :user_id, :username
  end
end
