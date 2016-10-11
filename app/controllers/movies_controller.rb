# This file is app/controllers/movies_controller.rb
class MoviesController < ApplicationController
  
  def index
    @movies = Movie.all
  end
  
  def new
  @movie = Movie.new
  # default: render 'new' template
end

# in movies_controller.rb
def create
  @movie = Movie.create!(params[:movie])
  redirect_to movies_path
end

end