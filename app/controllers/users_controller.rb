class UsersController < ApplicationController
  def show
    # il faut mettre un validation pour vérifier si le id c'est bien du current_user
    @bookings = Booking.where(user: current_user)
  end
end
