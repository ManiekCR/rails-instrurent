class InstrumentsController < ApplicationController
  skip_before_action :authenticate_user!, only[:index, :show]
  def index
  end

  def show
    @booking = Booking.new
  end

  def new
    @instrument = Instrument.new
    authorize @instrument
  end

  def edit
  end

  def create
    @instrument = Instrument.new(instrument_params)
  end

  private

  def set_instrument
    @instrument = Instrument.find(params[:id])
    authorize @instrument
  end

  def instrument_params
    params[:instrument].permit(:name, :category, :description)
  end
end
