class DashboardController < ApplicationController
  # include Pundit
  # before_action :verify_authorized, except: :show

  def show
    @user = current_user
    authorize @user
  end
end
