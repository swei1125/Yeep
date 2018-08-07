class Api::UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    @user.profile_img = "http://profilepicturesdp.com/wp-content/uploads/2018/06/default-profile-picture-transparent-1.png"
    if @user.save
      login(@user)
      render 'api/users/show'
    else
      render @user.errors.full_messages, status: 422
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:emial, :first_name, :last_name, :password, :profile_img)
  end
end
