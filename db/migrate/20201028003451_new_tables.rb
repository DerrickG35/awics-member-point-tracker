class NewTables < ActiveRecord::Migration[6.0]
  def change

    create_table :attendences do |t|
      t.bigint "event_id"
      t.bigint "user_id"
      t.index ["event_id"], name: "index_attendances_on_event_id"
      t.index ["user_id"], name: "index_attendances_on_user_id"

      t.timestamps
    end

    create_table :events do |t|
      t.string "event_name"
      t.datetime "event_date"
      t.float "event_points"
      t.text "question"
      t.bigint "user_id", null: false
      t.index ["user_id"], name: "index_events_on_user_id"

      t.timestamps
    end

    create_table :users do |t|
      t.string "email", default: "", null: false
      t.string "encrypted_password", default: "", null: false
      t.string "reset_password_token"
      t.datetime "reset_password_sent_at"
      t.datetime "remember_created_at"
      t.boolean "admin", default: false
      t.string "firstname"
      t.string "lastname"
      t.index ["email"], name: "index_users_on_email", unique: true
      t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

      t.timestamps
    end

  end
end
