class BookingsController < ApplicationController
  before_action :set_bbq, only: %i[create delete]
  before_action :set_booking, only: %i[show edit update delete]

  def show
  end

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

  def edit
  end

  def update
    if @booking.update(booking_params)
      redirect_to booking_path(@booking)
    else
      render 'new', status: :unprocessable_entity
    end
  end

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
