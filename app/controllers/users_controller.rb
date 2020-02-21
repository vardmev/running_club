class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])
    # @user.personal_records.build unless @user.personal_records.any?
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)

    redirect_to user_path(@user)
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :birthday, :city, :club_name, :experience)
    # , personal_records_attributes: [:id, :distance, :time, :date])
  end
end
