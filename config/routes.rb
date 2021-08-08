Rails.application.routes.draw do
  root   'sessions#new'
  post   '/signin',    to: 'sessions#create'
  delete '/signout',   to: 'sessions#destroy'

  get    '/home',      to: 'static_pages#home'
  get    '/search',    to: 'static_pages#search'

  get    '/signup',    to: 'users#new'
  
  resources :users
  resources :books
end