class BookingsController < ApplicationController
  def show
    @booking = Booking.all
  end

  def create
    @booking = Booking.new(user: current_user, tour: Tour.find(params[:tour_id]), progress: 0)
    if @booking.save
      redirect_to user_path(current_user)
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to user_path(current_user)
  end
end
