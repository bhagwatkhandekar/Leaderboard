Rails.application.routes.draw do
  resources :players
  resources :teams
  resources :games
  resources :users
  root 'all_players#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
