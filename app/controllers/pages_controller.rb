class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @booking = Booking.new
    @bbqs = Bbq.all
  end

  def my_bookings
    @bookings = current_user.bookings
  end

  def my_bbqs
    @bbqs = current_user.bbqs
  end
end
