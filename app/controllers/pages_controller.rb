class PagesController < ApplicationController
  def dashboard
    @user_offers = current_user.offers
    @user_bookings = current_user.bookings
  end
end
