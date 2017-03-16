class MoviesController < ApplicationController

  #before_action :require_user, only: [:index, :show]

  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
    @actors = @movie.actors
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to '/movies'
    else
      render 'new'
    end
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update_attributes(movie_params)
      redirect_to(:action => 'show', :id => @movie.id)
    else
      render 'edit'
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to movies_path
  end

  private
    def movie_params
      params.require(:movie).permit(:title, :release_year, :image, :plot)
    end

end
