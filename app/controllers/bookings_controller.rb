class BookingsController < ApplicationController
  def index
    @booking = Booking.first
    results = Geocoder.search(@booking.tour.city)
    @markers = [{
          lat: results.first.coordinates[0],
          lng: results.first.coordinates[1]
        }]
  end

  def show
  end
end
