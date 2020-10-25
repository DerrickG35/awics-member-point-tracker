# frozen_string_literal: true

class EventController < ApplicationController
  def show
    @events = Event.all
  end
end
