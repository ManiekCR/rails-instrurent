class InstrumentsController < ApplicationController
  before_action :set_instrument, only: [:show, :edit, :update]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @instruments = Instrument.all
  end

  def show
    @instrument = Instrument.find(params[:id])
    @booking = Booking.new
  end

  def new
    @instrument = Instrument.new
    # authorize @instrument
  end

  def edit
  end

  def create
    @instrument = Instrument.new(instrument_params)
    if @instrument.save
      redirect_to instrument_path(@instrument)
    else render 'new'
    end
  end

  def edit
  end

  def update
    @instrument.update(instrument_params)
    redirect_to instrument_path(@instrument)
  end

  def destroy
    @instrument = Instrument.find(params[:id])
    @instrument.destroy
    redirect_to instruments_path
  end

  private

  def set_instrument
    @instrument = Instrument.find(params[:id])
    # authorize @instrument
  end

  def instrument_params
    params[:instrument].permit(:name, :category, :description, :price)
  end
end
