Rails.application.routes.draw do
  devise_for :users
  root to: 'tours#index'
  resources :tours, only: [:index, :show, :live], shallow: true do
    resources :bookings, only: [ :create, :show, :destroy] do
      resources :reviews, only: [:new, :create, :destroy]
    end
    get 'live', to: 'tours#live'
  end
  resources :users, only: [:show]

  namespace :guide do
    resources :tours, only: [:index, :new, :create, :edit, :update, :destroy]
  end
end
