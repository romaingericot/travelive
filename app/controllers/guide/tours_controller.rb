class Guide::ToursController < ApplicationController
  def index
    @tours = Tour.where(user: current_user)
    @tour = Tour.new
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

  def live
    @tour = Tour.find(params[:tour_id])
    @checkpoints = Checkpoint.where(tour: @tour).order(:id)
  end

  def new
    @tour = Tour.new
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
    request.body = "{\"properties\":{\"max_participants\":20,\"enable_chat\":true,\"enable_screenshare\":true,\"enable_chat\":true,\"lang\":\"fr\"},\"privacy\":\"public\"}"

    response = http.request(request)
    # puts response.read_body

    @tour.live_url = JSON.parse(response.read_body)["url"]

    if @tour.save
      redirect_to tours_path
    else
      render :new
    end
  end

  private

  def tour_params
    params.require(:tour).permit(:name, :city, :country, :capacity, :date, :time, :duration, :description, :language, :category, :price)
  end
end
