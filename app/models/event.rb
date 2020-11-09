# frozen_string_literal: true

# event record
class Event < ApplicationRecord
  has_many :attendances
  has_many :users, through: :attendances, dependent: :destroy
end
