class BookingsController < ApplicationController
  before_action :set_offer, only: %i[new create]

  def new
    # @offer = Offer.find(params[:offer_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.offer = @offer
    if @booking.save
      redirect_to '/dashboard'
    else
      render 'offers/show', status: :unprocessable_entity
    end
  end

  def show
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(status: params[:new_status])
    redirect_to '/dashboard'
  end


  private

  def set_offer
    @offer = Offer.find(params[:offer_id])
  end

  def booking_params
    params.require(:booking).permit(:event_date, :comment)
  end
end
