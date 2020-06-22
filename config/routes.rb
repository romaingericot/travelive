Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :tours, shallow: true do
    resources :bookings do
    resources :reviews
    end
  end
end
