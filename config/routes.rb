Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :admins
  get 'hello_world', to: 'hello_world#index'

  namespace :api do
    namespace :v1 do
      resources :favorite_photos
    end
  end

  resource :home, controller: 'home'
  resources :favorites
  resources :garages do
    resource :add_to_garage
  end
  resource :profile, controller: 'profile'

  root to: 'home#show'
end
