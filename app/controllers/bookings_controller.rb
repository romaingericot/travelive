class BookingsController < ApplicationController
  def index
    @booking = Booking.first
  end

  def show
  end
end
