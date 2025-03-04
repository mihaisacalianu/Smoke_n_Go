class BbqsController < ApplicationController
  # runs set_bbq function for an array of functions: show, edit, update, destroy
  before_action :set_bbq, only: [:show, :edit,:update, :destroy]

  # index page to see all bbqs
  def index
    @bbq = Bbq.all
  end

  # show action for a specific bbq
  def show
  end

  # new action for a new bbq
  def new
    @bbq = Bbq.new
  end

  def create
    @bbq = Bbq.new(bbq_params)
    if @bbq.save
      redirect_to bbq_path(@bbq)
    else
      render 'new', status: :unprocessable_entity
    end
  end
  # edit action for editing an existing bbq
  def edit
  end

  def update
    if @bbq.update(bbq_params)
      redirect_to bbq_path(@bbq)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  # delete action for bbq
  def delete
    @bbq.destroy
    redirect_to bbqs_path, status: :see_other
  end
  private

  def set_bbq
    @bbq = Bbq.find(params[:id])
  end

  def bbq_params
    params.require(:bbq).permit(:name, :description, :price, :brand, :fuel_type, :grill_size, :pick_up, :delivery, :dates_unavailable)
  end
end
