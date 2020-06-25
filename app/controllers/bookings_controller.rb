class BookingsController < ApplicationController
  def show
    @booking = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
  end
end
