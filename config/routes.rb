Rails.application.routes.draw do
  resources :articles

  resources :users
  root 'users#new'
  resources :sessions, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

delete 'logout', to: 'sessions#destroy'
end
