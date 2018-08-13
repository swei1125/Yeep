class Api::UploadsController < ApplicationController

  def create
    @upload = Upload.new(upload_params)
    @upload.user_id = current_user.id
    if @upload.save
      return
    else
      render json: @upload.errors.full_messages, status: 422
    end
  end

  private
  def upload_params
    params.require(:upload).permit(:biz_id, :photo)
  end
end
