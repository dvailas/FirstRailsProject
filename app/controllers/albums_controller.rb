class AlbumsController < ApplicationController
  def index
    @albums = Album.order(:name)
  end

  def show
  end

  def new
  end

  def edit
  end
end
