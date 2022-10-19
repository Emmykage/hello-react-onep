# frozen_string_literal: true

Rails.application.routes.draw do
  # get 'greeting/index'
  namespace :api do
    namespace :v1 do
      resources :greetings, only: [:index]
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'root#index'
  # resources :greetings, only: [:index]
  # Defines the root path route ("/")
  # root "articles#index"
end
