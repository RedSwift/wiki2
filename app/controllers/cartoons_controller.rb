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

  def create
    @cartoon = Cartoon.new(cartoons_params)

    if @cartoon.save
      redirect_to cartoons_path, notice: "Your post is succesfully updated!"
    else
      render "new"
    end
  end

  def edit
    @cartoon = Cartoon.find(params[:id])
  end

  def update
    #code
  end

  def destroy
    @cartoon = Cartoon.find(params[:id])
    @cartoon.destroy
    redirect_to cartoons_path, notice: "Post was deleted!"
  end

private

def cartoons_params
  params.require(:cartoon).permit(:title, :content)
end


end
