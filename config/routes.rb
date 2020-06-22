Rails.application.routes.draw do
  get 'reviews/new'
  get 'bookings/index'
  get 'bookings/show'
  get 'tours/index'
  get 'tours/show'
  devise_for :users
  root to: 'pages#home'
  resources :tours, shallow: true do
    resources :bookings do
    resources :reviews
    end
  end
end
