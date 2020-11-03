# frozen_string_literal: true

# admin authentication for main aplication controller
class ApplicationController < ActionController::Base
  before_action :authenticate_admin!

  helper_method :sort_column, :sort_direction
  
  def index
    @products = Product.order(sort_column + " " + sort_direction)
  end
  
  # ...
  
  private
  
  def sort_column
    Product.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end

end
