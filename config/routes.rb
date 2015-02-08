AluDir::Application.routes.draw do
  get "search/index"
  get "search/show"
  devise_for :users, controllers: {registrations: "users/registrations"}
  
  root "search#index"

  resources :search, only: [:index, :show]

  resources :users, only: [:index, :show]
  resources :announcements
end
