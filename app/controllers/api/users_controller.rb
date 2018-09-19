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

  def update_password
    puts params[:user][:current_password]
    @user = User.find_by_credentials(params[:user][:email], params[:user][:current_password])

    if @user
      if params[:user][:password] != params[:user][:confirm_password]
        render json: ["The passwords you entered did not match."], status: 422
        return 
      end
      if @user.update(password: params[:user][:password])
        login(@user)
        render 'api/users/show'
      else
        render json: @user.errors.full_messages, status: 422
      end
    else
      render json: ["Your current password was incorrect."], status: 422
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :password, :profile_img, :current_password, :confirm_password)
  end
end
