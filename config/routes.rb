Rails.application.routes.draw do
  root to: 'home#index'
  patch 'capture', to: 'pokemon#capture'
  patch 'damage', to: 'pokemon#damage'
  get '/pokemons/new', to: 'pokemon#new'
  post '/pokemons/create', to: 'pokemon#create'
  devise_for :trainers
  resources :trainers
end
