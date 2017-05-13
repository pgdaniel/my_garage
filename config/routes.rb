Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :admins
  get 'hello_world', to: 'hello_world#index'

  resource :home, controller: 'home'
  root to: 'home#show'
end
