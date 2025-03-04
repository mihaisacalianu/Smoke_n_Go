class BbqsController < ApplicationController
  before_action :set_bbq, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @bbq = Bbq.all
  end

  def show
    @booking = Booking.new
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
    params.require(:bbq).permit(:name, :description, :location, :price, :brand, :fuel_type, :grill_size, :pick_up, :delivery, :dates_unavailable)
  end
end
