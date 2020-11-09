# frozen_string_literal: true

# controller for events
class EventController < ApplicationController
  def show
    @events = Event.all.uniq { |f| [f.event_name] }
  end
end
