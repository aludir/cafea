AluDir::Application.routes.draw do
  get "search/index"
  get "search/show"
  devise_for :users, controllers: {registrations: "users/registrations"}
  
  root "search#index"

  resources :search, only: [:index, :show]
  resources :interests
  post 'interest/:id/join', to: 'interests#join', as: 'join_interest'
  post 'interest/:id/leave', to: 'interests#leave', as: 'leave_interest'

  resources :users, only: [:index, :show]
  resources :announcements
  get 'announcements?tag=:id', to: 'announcements#index', as: 'announcements_tag'
  
  resources :tags, only: [:index]
    
  post 'comment', to: 'announcements#add_comment', as: 'add_comment'
  delete 'comment/:id', to: 'announcements#del_comment', as: 'del_comment'
end
