Rails.application.routes.draw do
  root   'users#new'
  get    '/index',     to: 'books#index'
  get    '/home',      to: 'static_pages#home'
  get    '/profile',   to: 'static_pages#profile'
  get    '/book_add',  to: 'books#new'
  get    '/edit',      to: 'books#edit'
  get    '/show',      to: 'books#show'
  get    '/search',    to: 'static_pages#search'
  get    '/signin',    to: 'sessions#new'
  post   '/signin',    to: 'sessions#create'
  delete '/signout',   to: 'sessions#destroy'
  resources :users
end