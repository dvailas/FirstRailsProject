class WelcomeController < ApplicationController
  def index
  end

  def about
  end

  def search
    @genres = Genre.all
  end

  def result
  end
end
