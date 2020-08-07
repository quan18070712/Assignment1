Rails.application.routes.draw do
  
  get 'form2s/new', to: 'form2s#new'
  get 'form1s/new', to: 'form1s#new'

  get 'sessions/new'
  get 'users/new'
  # root 'users#index'
  root 'static_pages#home'
  get '/home',      to: 'static_pages#home'
  get '/help',      to: 'static_pages#help', as: 'helf'
  get '/about',     to: 'static_pages#about'
  get '/contact',   to: 'static_pages#contact'
  get '/signup',    to: 'users#new'
  get '/login',     to: 'sessions#new'
  post '/login',    to: 'sessions#create'
  get '/logout',    to: 'sessions#destroy'
  resources :users
  resources :form1s
  resources :form2s

  # get 'static_pages/home'
  # get 'static_pages/help'
  # get 'static_pages/about'
  # get 'static_pages/contact'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
