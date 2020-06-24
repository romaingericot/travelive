class BookingsController < ApplicationController
  def index
    @booking = Booking.first
    @markers = [{
          lat: @booking.tour.latitude,
          lng: @booking.tour.longitude
        }]
  end

  def show
  end
end
