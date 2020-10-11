# frozen_string_literal: true

# class for creating new attendances with regards to specific user ids
class CreateAttendances < ActiveRecord::Migration[6.0]
  def change
    create_table :attendances do |t|
      t.string :event_id
      t.string :user_id

      t.timestamps
    end
  end
end
