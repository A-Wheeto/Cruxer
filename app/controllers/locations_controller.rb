class LocationsController < ApplicationController
  def index
    @locations = Location.all.order("name ASC")
  end

  def show
    @location = Location.find(params[:id])
  end
end
