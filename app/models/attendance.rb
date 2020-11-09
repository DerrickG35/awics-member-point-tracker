# frozen_string_literal: true

# attendance record
class Attendance < ApplicationRecord
  belongs_to  :event
  belongs_to  :user
end
