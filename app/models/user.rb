# frozen_string_literal: true

class User < ApplicationRecord
  scope :sorted, -> { order('username ASC') }
  scope :search, ->(query) { where(['username LIKE ?', "%#{query}%"]) }
end
