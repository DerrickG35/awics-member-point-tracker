class ChangeColumnNameInAttendance < ActiveRecord::Migration[6.0]
  def change
    rename_column :attendances, :user_id, :username
  end
end
