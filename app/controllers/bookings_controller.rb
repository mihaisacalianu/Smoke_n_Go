class BookingsController < ApplicationController
  before_action :set_bbq

  # action for creating a new booking
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
  end
end
