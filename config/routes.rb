Rails.application.routes.draw do
  get 'restaurants/index'
  root controller: :restaurants, action: :index
end
