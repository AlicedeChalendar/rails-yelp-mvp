Rails.application.routes.draw do
  # namespace :admin do
  #   resources :restaurants, only: [:index, :destroy]
  # end

  resources :restaurants, except: [:destroy, :update] do
    resources :reviews, only: [:new, :create]
  end
  # get 'restaurants', to: 'restaurants#index'

  # get 'restaurants/new', to: 'restaurants#new'
  # post 'restaurants', to: 'restaurants#create'

  # get 'restaurants/:id', to: 'restaurants#show'

  # get 'restaurants/:id/reviews/new'
  # post 'restaurants/:id/reviews'
end
