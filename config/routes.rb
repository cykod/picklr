Picklr::Application.routes.draw do

  devise_for :users

  resources :pickls, only: [ :index, :create ]

  root to: "home#index"
end
