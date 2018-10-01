class WelcomeController < ApplicationController
  def index
  end

  def about
  end

  def search
  end

  def result
    #@result_string = 'name LIKE ' + :q + '%'
    @keyword = params[:keyword]
    @genres = Genre.where( :name => params[:keyword])
  end

  def collection
    @genres = Genre.all.order(:name)
    @artists = Artist.all
    @albums = Album.all
  end
end
