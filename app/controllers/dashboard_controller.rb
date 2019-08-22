class DashboardController < ApplicationController
  def show
    @instruments = current_user.instruments
    @bookings = current_user.bookings
  end
end
