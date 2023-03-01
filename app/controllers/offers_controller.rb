class OffersController < ApplicationController
  def new
    @offer = Offer.new
  end

  def show
    @offer = Offer.find(params[:id])
    @booking = Booking.new
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
    @offers = Offer.all
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
