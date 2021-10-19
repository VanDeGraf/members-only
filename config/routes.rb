Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users, only: [:index]
  resources :posts

  root to: 'posts#index'
end
