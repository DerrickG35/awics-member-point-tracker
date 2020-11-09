# frozen_string_literal: true

# controller for static pages
class StaticController < ApplicationController
  def show
    render params[:page]
  end
end
