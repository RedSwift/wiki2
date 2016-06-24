class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)

    if @user.save
      redirect_to users_path, notice: "Successfuly created!"
    else
      render "new"
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path, notice: "Item was deleted!"
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
