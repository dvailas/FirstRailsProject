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
      @genres = Genre.where("name LIKE '" + @keyword + "'").order(:name)
      @artists = Artist.where("name LIKE '" + @keyword + "'").order(:name)
      @albums = Album.where("name LIKE '" + @keyword + "'").order(:name)
      @songs = Song.where("name LIKE '" + @keyword + "'").order(:name)
    else
      @genres = Genre.where(:id => 0)
      @artists = Artist.where(:id => 0)
      @albums = Album.where(:id => 0)
      @songs = Song.where(:id => 0)
      if(params[:genre])
        @genres = Genre.where("name LIKE '" + @keyword + "'").order(:name)
      end

      if(params[:artist])
        @artists = Artist.where("name LIKE '" + @keyword + "'").order(:name)
      end

      if(params[:album])
        @albums = Album.where("name LIKE '" + @keyword + "'").order(:name)
      end

      if(params[:song])
        @songs = Song.where("name LIKE '" + @keyword + "'").order(:name)
      end
    end
  end

  def collection
    @genres = Genre.all.order(:name)
    @artists = Artist.all
    @albums = Album.all
  end
end
