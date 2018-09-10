class Api::UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    @user.profile_img.attach(io: File.open("./app/assets/images/profile.png"), filename:"profile.png")
    if @user.save
      login(@user)
      render 'api/users/show'
    else
      render json: @user.errors.full_messages, status: 422
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :password)
  end
end
