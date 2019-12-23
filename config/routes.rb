Rails.application.routes.draw do
  root to: 'home#index'
  get 'home/index'
  get 'home/show'
  post 'rating/update_rating', to: 'rating#update_rating'

  namespace :admin do
    resources :movies
    resources :categories
  end

  devise_for :users
end
