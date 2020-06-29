Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: 'tours#index'
  resources :tours, shallow: true do
    resources :bookings, only: [ :create, :show, :destroy] do
      resources :reviews, only: [:new, :create, :destroy]
    end
    get 'live', to: 'tours#live'
  end
  resources :users, only: [:show]
end
