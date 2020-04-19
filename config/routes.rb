Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'pages/home', to: 'pages#home'
  #
  root 'welcome#home'

  get 'about', to: 'welcome#about'
  # get 'pages/about', to: 'pages#about'
  resources :articles
end
