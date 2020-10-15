Rails.application.routes.draw do
resources :players, only: [:index, :show]
resources :teams, only: [:index, :show]
resources :roles, only: [:index, :show]

end
