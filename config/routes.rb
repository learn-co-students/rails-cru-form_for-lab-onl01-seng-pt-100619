Rails.application.routes.draw do
  get 'genres/new'

  get 'genres/create'

  get 'genres/show'

  get 'genres/index'

  get 'genres/update'

  get 'artists/new'

  get 'artists/create'

  get 'artists/show'

  get 'artists/index'

  get 'artists/update'

  get 'songs/new'

  get 'songs/create'

  get 'songs/show'

  get 'songs/index'

  get 'songs/update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :artists, only: [:new, :create, :show, :index, :update, :edit]
  resources :songs, only: [:new, :create, :show, :index, :update, :edit]
  resources :genres, only: [:new, :create, :show, :index, :update, :edit]
  
end
