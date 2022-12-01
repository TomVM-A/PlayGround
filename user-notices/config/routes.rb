Rails.application.routes.draw do
  # get 'notifications/index' #question this was here but in the tutoril they modify it with the 3 line, why
  resources :notifications, only: [:index]

  resources :messages
  devise_for :users
  get 'dashboard/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "dashboard#show"
end
