# frozen_string_literal: true

# class for creating new attendance related events in the database
class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :event_name
      t.date :date
      t.time :time
      t.integer :point_amount

      t.timestamps
    end
  end
end