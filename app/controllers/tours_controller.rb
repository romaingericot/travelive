class ToursController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @cities = Tour.all.map { |tour| tour.city }.sort
    @countries = Tour.all.map { |tour| tour.country }.sort
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
      if params[:search][:city].empty?
        @tours = Tour.where("country ILIKE ?", params[:search][:country]).geocoded
        set_markers(@tours)
      else
        @tours = Tour.where("city ILIKE ?", params[:search][:city]).geocoded
        set_markers(@tours)
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

  private

  def set_markers(tours)
    @markers = tours.map do |tour|
      {
        lat: tour.latitude,
        lng: tour.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { tour: tour })
      }
    end
    @markers
  end
end
