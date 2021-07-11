Rails.application.routes.draw do
  get '/index', to: 'books#index'
  get '/home',  to: 'static_pages#home'
end
