class BookingsController < ApplicationController
  before_action :set_bbq, only: [:create, :delete]
  before_action :set_booking, only: [:show, :edit, :update, :delete]

  # action for showing a booking
  def show
  end

  # action for creating a new booking
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.bbq = @bbq
    if @booking.save
      redirect_to bbq_path(@bbq)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  # action for updating a booking
  def edit
  end

  def update
    if @booking.update(booking_params)
      redirect_to booking_path(@booking)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  # action for deleting a booking
  def delete
    @booking.destroy
    redirect_to bbq_path(@bbq)
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
