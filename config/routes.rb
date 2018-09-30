
Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/about'
  get 'welcome/about'
  get 'songs' => 'songs#index'
  get 'songs/show'
  get 'songs/new'
  get 'songs/edit'
  get 'albums' => 'albums#index'
  get 'albums/show'
  get 'albums/new'
  get 'albums/edit'
  get 'genres' => 'genres#index'
  get 'genres/show'
  get 'artists' => 'artists#index'
  get 'artists/show'
  get 'artists/new'
  get 'artists/edit'
  get 'welcome/index'

  root 'welcome#index'
end