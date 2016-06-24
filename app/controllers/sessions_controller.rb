class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user.present? && user.authenticate(params[:password])
      redirect_to cartoons_path, notice: "You're now logged in!"
    else
      flash.now.alert = "Invalid login details"
      render "new"
    end
  end
end
