Rails.application.routes.draw do
  devise_for :users
  root to: "clothes#today_outfit"
  post "/create_element", to: "outfits#create_element"
  post "/delete_element", to: "outfits#delete_element"
  resources :clothes, only: [:new, :create, :index, :show]

  resources :users, only: [:new, :create, :show]
  get "/home", to: "pages#home"
  get "/profile", to: "pages#profile"


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
