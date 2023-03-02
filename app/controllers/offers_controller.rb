class OffersController < ApplicationController
  def new
    @offer = Offer.new
  end

  def show
    @offer = Offer.find(params[:id])
    @booking = Booking.new
    @review = Review.new
    @reviews = @offer.reviews
    @markers = [{ lat: @offer.user.latitude, lng: @offer.user.longitude }]
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    if @offer.save
      redirect_to offer_path(@offer)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    if params[:query].present? || params[:category].present?
      if params[:query].present?
        @offers = Offer.global_search(params[:query])
      elsif params[:category].present?
        @offers = Offer.global_search(params[:category])
      end
    else
      @offers = Offer.all
    end

    # if params[:category].present?
    #   @offers = Offer.global_search(params[:category])
    # else
    #   @offers = Offer.all
    # end

    @users = User.all
    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude
      }
    end
  end

  def edit
    @offer = Offer.find(params[:id])
  end

  def update
    @offer = Offer.find(params[:id])
    if @offer.update(offer_params)
      redirect_to '/dashboard'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def offer_params
    params.require(:offer).permit(:celebrity_name, :price, :category, :content, :photo)
  end
end
