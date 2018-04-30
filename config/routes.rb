Rails.application.routes.draw do
  root controller: :restaurants, action: :index
  mount Cartify::Engine, at: '/'
  resources :products
end
