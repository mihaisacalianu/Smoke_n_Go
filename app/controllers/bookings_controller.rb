class BookingsController < ApplicationController
  before_action :set_bbq, only: %i[create update]
  before_action :set_booking, only: %i[show]

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
    @booking = Booking.find(params[:id])
    @markers = [{
      lat: @booking.bbq.latitude,
      lng: @booking.bbq.longitude,
      marker_html: render_to_string(partial: "marker")
    }]
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to bookings_path
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
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
