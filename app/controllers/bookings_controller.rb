class BookingsController < ApplicationController
  before_action :set_bbq, only: %i[create]
  before_action :set_booking, only: %i[show edit update]

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.bbq = @bbq
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @booking.update(booking_params)
      redirect_to booking_path(@booking)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def destroy
    # Need to access the instance of the booking sent from the booking index page, then delete this (query if we need next line)
    @bbq = @booking.bbq
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def set_bbq
    @bbq = Bbq.find(params[:bbq_id])
  end

  def set_booking
    @booking = Booking.find(params[:booking_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
