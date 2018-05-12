Rails.application.routes.draw do
  get 'review/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "restaurants#index"

  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end

  namespace :admin do
    resources :restaurants
  end
end
