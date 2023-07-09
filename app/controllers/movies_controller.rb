class MoviesController < ApplicationController

  def index
    movies = Movie.all
    render json: movies
  end

  def create
    movie = Movie.create(movies_params)
    render json: movie, status: :created
  end

  private

  def movies_params
    params.permit(:title, :year, :length, :director, :description, :poster_url, :category, :discount, :female_director)
  end

end
