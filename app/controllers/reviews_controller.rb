class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @reviews = Review.where(user_id: current_user)
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    if @review.save
      redirect_to tours_path
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to tours_path
  end

  private

  def review_params
    params.require(:review).permit(:date, :time)
  end

end
