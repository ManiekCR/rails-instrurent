class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @instrument = Instrument.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    @instrument = Instrument.find(params[:instrument_id])
    authorize @instrument
    @booking.instrument = @instrument
    @booking.user = current_user
    if @booking.save
      redirect_to dashboard_show_path
    else
      redirect_to instrument_path(@instrument)
    end
  end

  def edit
    authorize @booking
  end

  def update
    authorize @booking
  end

  def destroy
    authorize @booking
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :instrument)
  end
end
