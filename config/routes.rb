Rails.application.routes.draw do
  devise_for :users
  root to: "clothes#today_outfit"
  post "/create_element", to: "outfits#create_element"
  resources :clothes, only: [:new, :create, :index, :show]


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
