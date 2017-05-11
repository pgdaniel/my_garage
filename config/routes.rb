Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'hello_world', to: 'hello_world#index'

  resource :home, controller: 'home'
  root to: 'home#show'
end
