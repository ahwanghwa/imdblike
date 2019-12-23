class HomeController < ApplicationController
  before_action :authenticate_user!, only: :update

  def index
    @movies = SearchMoviesQuery.call(ctx: search_context)
  end

  def show
    @movie = Movie.friendly.find(params[:id])
  end

  private

  def search_context
    { title: params[:title], category: params[:category] }
  end
end
