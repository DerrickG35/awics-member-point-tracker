# frozen_string_literal: true

#  method for sorting users within the main database
class User < ApplicationRecord
  scope :sorted, -> { order('username ASC') }
  scope :search, ->(query) { where(['username LIKE ?', "%#{query}%"]) }
end
