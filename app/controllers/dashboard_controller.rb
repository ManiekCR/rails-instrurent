class DashboardController < ApplicationController
  def show
    @instruments = Instrument.all
    @bookings = Booking.all
  end

  private

  def set_instrument

  end
end
