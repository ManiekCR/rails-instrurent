class DashboardController < ApplicationController
  skip_after_action :verify_authorized
  def show
    @instruments = current_user.instruments
    @bookings = current_user.bookings
  end
end
