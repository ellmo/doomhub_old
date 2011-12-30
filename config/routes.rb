Doomhub::Application.routes.draw do

  root :to => 'home#index'

  get "home/index"

  devise_for :users
  devise_scope :user do
    get "/login" => "devise/sessions#new"
    get "/logout" => "devise/sessions#destroy"
    get "/register" => "devise/registrations#new"
  end
  
end