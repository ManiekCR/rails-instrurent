class InstrumentsController < ApplicationController
  before_action :set_instrument, only: [:show, :edit, :update]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @instruments = Instrument.geocoded
    @markers = @instruments.map do |instrument|
      {
        lat: instrument.latitude,
        lng: instrument.longitude,
        infoWindow: render_to_string(partial: "shared/info_window", locals: { instrument: instrument })
      }
    end
  end

  def show
    @instrument = Instrument.find(params[:id])
    @booking = Booking.new
  end

  def new
    @instrument = Instrument.new
    # authorize @instrument
  end

  def create
    @instrument = Instrument.new(instrument_params)
    @instrument.user_id = current_user.id
    if @instrument.save
      redirect_to dashboard_show
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
    params[:instrument].permit(:name, :category, :description, :price, :address)
  end
end
