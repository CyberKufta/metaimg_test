Rails.application.routes.draw do
  root "pages#index"
  resources :images, only: [:create]
end
