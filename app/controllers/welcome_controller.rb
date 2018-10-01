class WelcomeController < ApplicationController
  def index
  end

  def about
  end

  def search
  end

  def result
    @keyword = params[:keyword] + '%'
    @genres = Genre.where("name LIKE '" + @keyword + "'")
    @artists = Artist.where("name LIKE '" + @keyword + "'")
    @albums = Album.where("name LIKE '" + @keyword + "'")
    @songs = Song.where("name LIKE '" + @keyword + "'")
  end

  def collection
    @genres = Genre.all.order(:name)
    @artists = Artist.all
    @albums = Album.all
  end
end
