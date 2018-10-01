class SongsController < ApplicationController
  def index
    @songs = Song.all.order(:name)
  end

  def show
    @song = Song.find(params[:id])
    if(@song.explicit == nil)
      @explicit = 'N/A'
    else
      @explicit = @song.explicit
    end
  end

  def new
  end

  def edit
  end
end
