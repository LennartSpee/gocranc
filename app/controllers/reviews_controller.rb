class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @offer = Offer.find(params[:offer_id])
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @offer = Offer.find(params[:offer_id])
    @review.offer = @offer
    if @review.save
      flash[:success] = 'Review created!'
      redirect_to root_path
    else
      flash[:error] = "Review wasn't saved"
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
