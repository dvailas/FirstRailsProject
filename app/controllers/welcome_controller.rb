class WelcomeController < ApplicationController
  def index
  end

  def about
  end

  def search
  end

  def result
    @keyword = params[:keyword] + '%'

    if(!params[:genre] && !params[:artist] && !params[:album] && !params[:song] )
      @genres = Genre.where("name LIKE '" + @keyword + "'")
      @artists = Artist.where("name LIKE '" + @keyword + "'")
      @albums = Album.where("name LIKE '" + @keyword + "'")
      @songs = Song.where("name LIKE '" + @keyword + "'")
    else
      @genres = Genre.where(:id => 0)
      @artists = Artist.where(:id => 0)
      @albums = Album.where(:id => 0)
      @songs = Song.where(:id => 0)
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
