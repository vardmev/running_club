class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(first_name: params[:user][:first_name], last_name: params[:user][:last_name])

    redirect_to user_path(@user)
  end

  def show
    @user = User.find(params[:id])
  end
end
