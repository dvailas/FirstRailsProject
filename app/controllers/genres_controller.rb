class GenresController < ApplicationController
  def index
    @genres = Genre.order(:name)
  end

  def show

  end
end
