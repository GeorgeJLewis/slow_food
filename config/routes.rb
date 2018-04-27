Rails.application.routes.draw do
  root controller: :restaurants, action: :index
  resources :products, only: [:index, :show]
end
