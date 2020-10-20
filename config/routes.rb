Rails.application.routes.draw do
resources :players, only: [:index, :show] do
  # Allows for searching through players#search --> search_players_path
  collection do
    get "search"
  end
end
resources :teams, only: [:index, :show]
resources :roles, only: [:index, :show]
root to: 'home#index'
end
