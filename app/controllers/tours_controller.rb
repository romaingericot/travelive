require 'uri'
require 'net/http'
require 'openssl'

class ToursController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @cities = Tour.all.map { |tour| tour.city }.sort.uniq
    @countries = Tour.all.map { |tour| tour.country }.sort.uniq
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
    @tour = Tour.new
    @tours = Review.where(user_id: current_user)
  end

  def create
    @tour = Tour.new(tour_params)
    @tour.user = current_user

    url = URI("https://api.daily.co/v1/rooms")

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Post.new(url)
    request["content-type"] = 'application/json'
    request["authorization"] = "Bearer #{ENV['DAILY_API_KEY']}"
    request.body = "{\"properties\":{\"max_participants\":10,\"enable_chat\":true,\"lang\":\"fr\"},\"privacy\":\"public\"}"

    response = http.request(request)
    # puts response.read_body

    @tour.live_url = JSON.parse(response.read_body)["url"]

    if @tour.save
      redirect_to tours_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @tour = Tour.find(params[:id])
    @tour.destroy
    redirect_to tours_path
  end

  def live
    @tour = Tour.find(params[:tour_id])
  end

  private

  def tour_params
    params.require(:tour).permit(:name, :city, :country, :capacity, :date, :time, :duration, :description, :language, :category, :price)
  end

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
