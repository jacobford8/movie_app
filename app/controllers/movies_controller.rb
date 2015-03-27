class MoviesController < ApplicationController
  def index
  	@movies = Movie.search(params[:q])
  end	

  def new
  end

  def edit
  end

  def show
  end
end
