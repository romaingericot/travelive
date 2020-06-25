class BookingsController < ApplicationController
  def show
    @booking = Booking.first
  end

  def new
  end

  def create
  end
end
