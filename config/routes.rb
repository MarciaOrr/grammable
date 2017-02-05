Rails.application.routes.draw do
  devise_for :users
  
  root 'grams#index'

  resources :grams, only: [:new, :create, :edit, :update, :show, :destroy]

  resources :grams do
    resource :comments, only: :create
  end

end
