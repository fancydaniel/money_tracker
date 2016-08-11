Rails.application.routes.draw do

  get 'home/index'

  devise_for :users
  root to: "welcome#index"

  resources :balances
end
