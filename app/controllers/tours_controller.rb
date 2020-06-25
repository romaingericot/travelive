class ToursController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @cities = Tour.all.map { |tour| tour.city }.sort
    if params[:search].nil?
      @tours = Tour.geocoded
      @markers = @tours.map do |tour|
        {
          lat: tour.latitude,
          lng: tour.longitude,
          infoWindow: render_to_string(partial: "info_window", locals: { tour: tour })
        }
      end
    else
      @tours = Tour.where("city ILIKE ?", params[:search][:city]).geocoded
      @markers = @tours.map do |tour|
        {
          lat: tour.latitude,
          lng: tour.longitude,
          infoWindow: render_to_string(partial: "info_window", locals: { tour: tour })
        }
      end
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
