# frozen_string_literal: true

# abstract class definition
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
