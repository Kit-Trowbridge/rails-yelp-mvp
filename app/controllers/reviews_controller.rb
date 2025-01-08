class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  # def create
  #   @review =
  #   @review.save
  #   redirect_to restaurant_reviews_path
  # end
end
