class ToursController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :index ]

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

  def new

  end

  def create

  end

  def edit
  end

  def update

  end

  def destroy
  end

  def live
  end

end
