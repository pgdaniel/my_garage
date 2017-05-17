Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  get 'hello_world', to: 'hello_world#index'

  namespace :api do
    namespace :v1 do
      resources :favorite_photos, only: [:update, :destroy, :index]
      resources :users, only: :index
      resources :generic_images, only: :index
    end
  end

  resource :home, controller: 'home'
  resources :favorites, only: :index
  resources :garages, only: [:new, :create]
  resource :profile, controller: 'profile', only: [:show, :edit]

  root to: 'home#show'
end
