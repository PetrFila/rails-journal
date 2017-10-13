class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to user_path
  end
end
