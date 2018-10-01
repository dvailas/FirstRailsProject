class WelcomeController < ApplicationController
  def index
  end

  def about
  end

  def search
  end

  def result
    @keyword = params[:keyword] + '%'

    if(!params[:genre] ||!params[:artist] || !params[:album] || !params[:song] )
      @genres = Genre.where("name LIKE '" + @keyword + "'")
      @artists = Artist.where("name LIKE '" + @keyword + "'")
      @albums = Album.where("name LIKE '" + @keyword + "'")
      @songs = Song.where("name LIKE '" + @keyword + "'")
    else
      @genres = nil
      @artists = nil
      @albums = nil
      @songs = nil
      if(params[:genre])
        @genres = Genre.where("name LIKE '" + @keyword + "'")
      end

      if(params[:artist])
        @artists = Artist.where("name LIKE '" + @keyword + "'")
      end

      if(params[:album])
        @albums = Album.where("name LIKE '" + @keyword + "'")
      end

      if(params[:song])
        @songs = Song.where("name LIKE '" + @keyword + "'")
      end
    end
  end

  def collection
    @genres = Genre.all.order(:name)
    @artists = Artist.all
    @albums = Album.all
  end
end
