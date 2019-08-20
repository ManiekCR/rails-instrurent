class InstrumentsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @instruments = Instrument.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
