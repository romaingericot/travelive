Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: 'tours#index'
  resources :tours, shallow: true do
    resources :bookings, only: [:new, :create, :show, :destroy] do
    resources :reviews, only: [:new, :create, :destroy]
    end
  end
  resources :users, only: [:show]
  get 'live', to: 'tours#live'
  get 'livetest', to: 'tours#livetest'
end
