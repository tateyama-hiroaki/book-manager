Rails.application.routes.draw do
  get '/index',     to: 'books#index'
  get '/home',      to: 'static_pages#home'
  get '/profile',   to: 'static_pages#profile'
  get '/book_add',  to: 'books#new'
  get '/edit',      to: 'books#edit'
  get '/show',      to: 'books#show'
  get '/search',    to: 'static_pages#search'
  get '/signup',    to: 'users#new'
end