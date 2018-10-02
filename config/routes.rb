
Rails.application.routes.draw do
  get 'welcome' => 'welcome#index'
  get 'about' =>'welcome#about'
  get 'collection' => 'welcome#collection'
  get 'search' =>'welcome#search'
  get 'result' =>'welcome#result'
  get 'songs' => 'songs#index'
  get 'songs/show'
  get 'albums' => 'albums#index'
  get 'albums/show'
  get 'genres' => 'genres#index'
  get 'genres/show'
  get 'artists' => 'artists#index'
  get 'artists/show'
  get 'welcome/index'
  resources :artists
  resources :songs
  resources :albums
  resources :genres

  root 'welcome#index'
end