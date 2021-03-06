Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'pages/home', to: 'pages#home'
  #
  root 'welcome#home'

  get 'about', to: 'welcome#about'
  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :users, except: [:new]
  # get 'pages/about', to: 'pages#about'
  resources :articles
end
