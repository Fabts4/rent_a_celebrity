class ReviewsController < ApplicationController
  before_action :set_offer, only: %i[new create]
  def index

  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.offer = @offer
    if @review.save
      redirect_to offer_path(@offer)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_offer
    @offer = Offer.find(params[:offer_id])
  end

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
