class ToursController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :index ]

  def index
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
end
