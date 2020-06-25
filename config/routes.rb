Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :tours, shallow: true do
    resources :bookings do
    resources :reviews
    end
  end
  get 'live', to: 'tours#live'
  post 'live', to: 'tours#live'
  get 'livetest', to: 'tours#livetest'
  post 'livetest', to: 'tours#livetest'
end
