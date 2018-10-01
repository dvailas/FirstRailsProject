class AlbumsController < ApplicationController
  def index
    @albums = Album.order(:name)
  end

  def show
    @album = Album.find(params[:id])
    @songs = Song.where(:album => @album).order(:track_number)
  end

  def new
  end

  def edit
  end
end
