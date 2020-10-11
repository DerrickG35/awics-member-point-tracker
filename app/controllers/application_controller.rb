# frozen_string_literal: true

# admin authentication for main aplication controller
class ApplicationController < ActionController::Base
  before_action :authenticate_admin!
end
