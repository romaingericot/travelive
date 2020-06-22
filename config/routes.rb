Rails.application.routes.draw do
  get 'reviews/new'
  get 'bookings/index'
  get 'bookings/show'
  get 'tours/index'
  get 'tours/show'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
