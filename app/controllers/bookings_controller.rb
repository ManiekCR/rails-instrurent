class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @instrument = Instrument.find(params[:id])
  end

  def create
  end
end
