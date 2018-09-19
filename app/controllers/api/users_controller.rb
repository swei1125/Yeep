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

  def update
    user = User.find(params[:id])
    if user.update(user_params)
      @user = User.find(params[:id])
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
    params.require(:user).permit(:email, :first_name, :last_name, :password, :profile_img)
  end
end
