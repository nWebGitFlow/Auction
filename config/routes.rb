Rails.application.routes.draw do

  # get 'users/new'
  resources :users
  root 'pages_steward#index'

  get    '/index',   			to: 'pages_steward#index'
  # get    '/registration',   	to: 'pages_steward#registration'
  get    '/politics',   		to: 'pages_steward#politics'
  get    '/autorization',   	to: 'pages_steward#index'

  # get    '/runauction',   	    to: 'users#runauction'
  # get    '/stopauction',   	    to: 'users#stopauction'
  get    '/add_switch',   	    to: 'users#add_switch'

	match '/signup',  to: 'users#new',            via: 'get'

  # get 'pages_steward/index'
  # get 'pages_steward/registration'
  # get 'pages_steward/politics'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
