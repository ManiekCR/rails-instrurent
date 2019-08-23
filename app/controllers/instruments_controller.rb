class InstrumentsController < ApplicationController
  before_action :set_instrument, only: [:show, :edit, :update]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
  if params[:address]
    @instruments = policy_scope(Instrument).near(params[:address], 10)
  elsif params[:type]
    @instruments = policy_scope(Instrument)
    .search_by_name_and_category_and_description(params[:type])
  else
    @instruments = policy_scope(Instrument).first(10)
  end
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
    authorize @instrument
  end

  def new
    @instrument = Instrument.new
    authorize @instrument
  end

  def create
    @instrument = Instrument.new(instrument_params)
    @instrument.user_id = current_user.id
    authorize @instrument
    if @instrument.save
      redirect_to dashboard_show_path
    else render 'new'
    end
  end

  def edit
    authorize @instrument
  end

  def update
    @instrument.update(instrument_params)
    authorize @instrument
    redirect_to dashboard_show_path
  end

  def destroy
    @instrument = Instrument.find(params[:id])
    @instrument.destroy
    authorize @instrument
    redirect_to dashboard_show_path
  end

  private

  def set_instrument
    @instrument = Instrument.find(params[:id])
  end

  def instrument_params
    params[:instrument].permit(:name, :category, :description, :price, :address, :photo)
  end
end
