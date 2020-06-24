class ToursController < ApplicationController
  def index
    @tours = Tour.all
    @markers = []
    @tours.each do |tour|
      @markers << {
        lat: tour.latitude,
        lng: tour.longitude
      }
    end
  end

  def show
    @tour = Tour.find(params[:id])
  end
end
