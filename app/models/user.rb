class User < ApplicationRecord

  scope :sorted, lambda { order("username ASC")}
  scope :search, lambda {|query| where(["username LIKE ?", "%#{query}%"])}
end
