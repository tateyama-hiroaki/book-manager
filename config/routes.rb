Rails.application.routes.draw do
  root   'sessions#new'

  get    '/home',      to: 'static_pages#home'
  get    '/profile',   to: 'static_pages#profile'
  get    '/search',    to: 'static_pages#search'

  get    '/index',     to: 'books#index'
  get    '/book_add',  to: 'books#new'
  get    '/edit',      to: 'books#edit'
  get    '/show',      to: 'books#show'
  
  get    '/signup',    to: 'users#new'
  
  post   '/signin',    to: 'sessions#create'
  delete '/signout',   to: 'sessions#destroy'
  
  resources :users
end