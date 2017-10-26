Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: "users/registrations"}

  root "users#index"

  resources :search, only: [:index, :show]
  resources :interests
  post 'interest/:id/join', to: 'interests#join', as: 'join_interest'
  post 'interest/:id/leave', to: 'interests#leave', as: 'leave_interest'
  resources :lbgs
  post 'lbg/:id/join', to: 'lbgs#join', as: 'join_lbg'
  post 'lbg/:id/leave', to: 'lbgs#leave', as: 'leave_lbg'

  resources :users, only: [:index, :show]
  resources :announcements
  get 'announcements?tag=:id', to: 'announcements#index', as: 'announcements_tag'

  resources :tags, only: [:index]
  resources :contacts, except: [:index, :show]
  resources :addresses, except: [:index, :show]
  resources :languages, except: [:index, :show]
  resources :educations, except: [:index, :show]
  resources :experiences, except: [:index, :show]
  resources :lbgs, except: [:index, :show]

  post 'comment', to: 'announcements#add_comment', as: 'add_comment'
  delete 'comment/:id', to: 'announcements#del_comment', as: 'del_comment'
end
