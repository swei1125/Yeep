class Api::ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.biz_id = params[:biz_id]
    @biz = @review.biz
    if @review.save
      render 'api/bizs/show'
    else
      render json: @review.errors.full_messages, status: 422
    end
  end

  def update
    @review = Review.find(params[:id])
    @biz = @review.biz
    if @review.update
      render 'api/bizs/show'
    else
      render json: @review.errors.full_messages, status: 422
    end
  end

  def destroy
    review = Review.find(params[:id])
    review.destroy
  end

  private
  def review_params
    params.require(:review).permit(:body, :rating)
  end
end
