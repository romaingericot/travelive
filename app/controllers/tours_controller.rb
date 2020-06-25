require 'uri'
require 'net/http'
require 'openssl'

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
    @tour = Tour.new
  end

  def create


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
    end

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
