Rails.application.routes.draw do
  # get 'songs/create'

  # get 'songs/update'

  # get 'songs/show'

  # get 'genres/create'

  # get 'genres/update'

  # get 'genres/show'

  # get 'artists/create'

  # get 'artists/update'

  # get 'artists/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :artists, only: [:new, :create, :show, :edit, :update]
  resources :songs, only: [:index, :new, :create, :show, :edit, :update]
  resources :genres, only: [:new, :create, :show, :edit, :update]
end
