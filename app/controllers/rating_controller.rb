class RatingController < ApplicationController
  before_action :authenticate_user!

  def update_rating
    rating = current_user.ratings.create!(rating_params)
    render json: { rating: rating.movie.rating }
  end

  private

  def rating_params
    params.permit(:movie_id, :vote)
  end
end
