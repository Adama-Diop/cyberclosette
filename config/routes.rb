Rails.application.routes.draw do
  devise_for :users
  root to: "clothes#today_outfit"
  post "/create_element", to: "outfits#create_element"
  post "/delete_element", to: "outfits#delete_element"
  get "clothes/category", to: "clothes#show"

  resources :clothes, only: [:new, :create, :index]

  resources :users, only: [:new, :create, :show]
  resources :pages, only: [:index]
  get "/home", to: "pages#home"


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
