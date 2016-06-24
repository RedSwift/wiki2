class CartoonsController < ApplicationController
  def index
    @cartoons = Cartoon.all
  end

  def show
    @cartoon = Cartoon.find(params[:id])
  end

  def new
    @cartoon = Cartoon.new
  end

  def edit
  end
end
