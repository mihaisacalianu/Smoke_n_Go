class BbqsController < ApplicationController
  before_action :set_bbq, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: %i[index show]

  def index

    # redirect_to root_path unless params["booking"][:start_date].present? && params["booking"][:end_date].present?
    @bbqs = Bbq.all

    @start_date, @end_date = extract_dates(params)

    @markers = @bbqs.geocoded.map do |bbq|
      {
        lat: bbq.latitude,
        lng: bbq.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {bbq: bbq}),
        marker_html: render_to_string(partial: "marker")
      }
    end

    if params[:filters]
      @bbqs = @bbqs.where(brand: params[:filters][:brand]) if params[:filters][:brand].present?
      @bbqs = @bbqs.where(fuel_type: params[:filters][:fuel_type]) if params[:filters][:fuel_type].present?
      @bbqs = @bbqs.where(grill_size: params[:filters][:grill_size]) if params[:filters][:grill_size].present?
      @bbqs = @bbqs.where(pick_up: true) if params[:filters][:pick_up] == "1"
      @bbqs = @bbqs.where(delivery: true) if params[:filters][:delivery] == "1"
      @bbqs = @bbqs.where("price <= ?", params[:filters][:price]) if params[:filters][:price].present?
    end

  end

  def show
    @bbqs = Bbq.all
    @booking = Booking.new

    # Filter BBQs based on user dates
    if params["booking"][:start_date].present? && params["booking"][:end_date].present?
      start_date = Date.parse(params["booking"][:start_date])
      end_date = Date.parse(params["booking"][:end_date])

      @booking.start_date = start_date
      @booking.end_date = end_date
    end

    @markers = [{
        lat: @bbq.latitude,
        lng: @bbq.longitude,
        marker_html: render_to_string(partial: "marker")
      }]
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

  def extract_dates(params)
    if params[:start_date].present? && params[:end_date].present?
      start_date = Date.parse(params[:start_date])
      end_date = Date.parse(params[:end_date])
    elsif params.dig(:booking, :start_date).present? && params.dig(:booking, :end_date).present?
      start_date = Date.parse(params[:booking][:start_date])
      end_date = Date.parse(params[:booking][:end_date])
    end
    [start_date, end_date]
  rescue ArgumentError
    [nil, nil] # Handles invalid date errors
  end
end
