# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_201_005_202_741) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'admins', force: :cascade do |t|
    t.string 'email', null: false
    t.string 'full_name'
    t.string 'uid'
    t.string 'avatar_url'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['email'], name: 'index_admins_on_email', unique: true
  end

  create_table 'attendances', force: :cascade do |t|
    t.string 'event_id'
    t.string 'username'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'events', force: :cascade do |t|
    t.string 'event_name'
    t.date 'date'
    t.time 'time'
    t.integer 'point_amount'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'positions', force: :cascade do |t|
    t.string 'position_id'
    t.integer 'multiplier'
    t.string 'position_title'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'users', force: :cascade do |t|
    t.string 'first_name'
    t.string 'last_name'
    t.string 'position_id'
    t.integer 'member_points'
    t.string 'username'
    t.string 'password'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.string 'email'
  end
end
