Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users

  resources :drinks
  resources :ingredients

  resources :bars, only: [:update]
  get 'my_bar' => 'bars#edit'

  get 'my_account' => 'users#edit'

  get 'randomizer' => 'drinks#random'

  root :to => 'home#index'
end
