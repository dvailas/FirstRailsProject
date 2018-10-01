class GenresController < ApplicationController
  def index
    @genres = Genre.order(:name)
  end

  def show
    @genre = Genre.find(params[:id])
    @artists = Artist.where(:genre => @genre)
  end
end
