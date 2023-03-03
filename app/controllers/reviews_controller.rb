class ReviewsController < ApplicationController
  before_action :set_offer, only: %i[new create]
  def index

  end

  def new
    # @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.offer = @offer
    @booking = Booking.new
    @reviews = @offer.reviews

    respond_to do |format|
      if @review.save
        format.html { redirect_to offer_path(@offer) }
        format.json
      else
        format.html { render 'offers/show', status: :unprocessable_entity }
        format.json
      end
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
