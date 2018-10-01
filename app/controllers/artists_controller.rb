class ArtistsController < ApplicationController
  def index
    @artists = Artist.order(:name)
  end

  def show
    @artist = Artist.find(params[:id])
    @albums = Album.where(:artist => @artist)
    @songs_top_5 = Song.where(:artist => @artist).order(:rating).limit(5)
  end

  def new
  end

  def edit
  end
end
