class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    # @review.restaurant_id = @restaurant.id
    @review.restaurant = @restaurant
    if @review.save
      # yayyyy, it saved successfully
      redirect_to restaurant_path(@restaurant)
    else
      # noooo, there was some validation error - it didn't save
      render :new, status: :unprocessable_entity
      # show me the form again
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
