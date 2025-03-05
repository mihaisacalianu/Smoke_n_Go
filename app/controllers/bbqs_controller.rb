class BbqsController < ApplicationController
  before_action :set_bbq, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @bbqs = Bbq.all

    @markers = @bbqs.geocoded.map do |bbq|
      {
        lat: bbq.latitude,
        lng: bbq.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {bbq: bbq}),
        marker_html: render_to_string(partial: "marker")
      }
    end

    if params["booking"][:start_date].present? && params["booking"][:end_date].present?
      start_date = Date.parse(params["booking"][:start_date])
      end_date = Date.parse(params["booking"][:end_date])

      # Assuming a Barbecue has many bookings with a `start_date` and `end_date`
      @bbqs = @bbqs.reject do |bbq|
        bbq.bookings.exists?(
          ["(start_date, end_date) OVERLAPS (?, ?)", start_date, end_date]
        )
      end
    end
  end

  def show
    @bbqs = Bbq.all
    @booking = Booking.new

    # Filter BBQs based on user dates
    if params[:start_date].present? && params[:end_date].present?
      start_date = Date.parse(params[:start_date])
      end_date = Date.parse(params[:end_date])

      @booking.start_date = start_date
      @booking.end_date = end_date
    end

    @markers = @bbqs.geocoded.map do |bbq|
      {
        lat: bbq.latitude,
        lng: bbq.longitude,
        marker_html: render_to_string(partial: "marker")
      }
    end
  end

  def new
    @bbq = Bbq.new
  end

  def create
    @bbq = Bbq.new(bbq_params)
    @bbq.user = current_user
    if @bbq.save
      redirect_to bbq_path(@bbq)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @bbq.update(bbq_params)
      redirect_to bbq_path(@bbq)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def destroy
    @bbq.destroy
    redirect_to bbqs_path, status: :see_other
  end

  private

  def set_bbq
    @bbq = Bbq.find(params[:id])
  end

  def bbq_params
    params.require(:bbq).permit(:name, :description, :address, :price, :brand, :fuel_type, :grill_size, :pick_up, :delivery, :dates_unavailable, :photo)
  end
end
