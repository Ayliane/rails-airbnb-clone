Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :users, only: [:edit, :update] do
    resources :bookings, only: [:index]
  end
  resources :kennels do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:show, :edit, :update]
  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
