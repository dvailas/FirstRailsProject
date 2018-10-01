class ArtistsController < ApplicationController
  def index
    @artists = Artist.order(:name)
  end

  def show
  end

  def new
  end

  def edit
  end
end
