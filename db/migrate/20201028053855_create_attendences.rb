class CreateAttendences < ActiveRecord::Migration[6.0]
  def change
    rename_table :attendences, :attendances
  end
end
