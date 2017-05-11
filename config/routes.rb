Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'

  resource :home, controller: 'home'
  root to: 'home#show'
end
