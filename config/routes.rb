Rails.application.routes.draw do
  root controller: :restaurants, action: :index
<<<<<<< HEAD
  # root to: "products#index"
=======
>>>>>>> bcf1a7053db4ec492b952b2d0f66482408f7bf4e
  resources :products
end
