Rails.application.routes.draw do
  resources :reviews, except: [:show, :index]

  devise_for :users
  resources :albums
  root 'albums#index'

end
