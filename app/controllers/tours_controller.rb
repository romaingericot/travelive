class ToursController < ApplicationController
  def index
    @tours = Tour.geocoded
    @markers = @tours.map do |tour|
      {
        lat: tour.latitude,
        lng: tour.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { tour: tour })
      }
    end
  end

  def show
    @tour = Tour.find(params[:id])
  end
end
