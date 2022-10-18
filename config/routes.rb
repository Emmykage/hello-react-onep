Rails.application.routes.draw do
  get 'greeting/index'
  root 'root#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :greetings, only: [:index]
  # Defines the root path route ("/")
  # root "articles#index"
end
