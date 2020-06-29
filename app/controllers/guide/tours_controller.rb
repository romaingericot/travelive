class Guide::ToursController < ApplicationController
  def index
    @tours = Tour.where(user: current_user)
  end

  def edit
    @tour = Tour.find(params[:id])
  end

  def update
    @tour = Tour.find(params[:id])
    if @tour.update(tour_params)
      redirect_to guide_tours_path(current_user)
    else
      render :edit
    end
  end

  def destroy
    @tour = Tour.find(params[:id])
    @tour.destroy
    redirect_to guide_tours_path(current_user)
  end

  private

  def tour_params
    params.require(:tour).permit(:name, :city, :country, :capacity, :date, :time, :duration, :description, :language, :category, :price)
  end
end
