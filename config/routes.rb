Rails.application.routes.draw do
  resources :users, only: [:show]

  devise_for :users
  root "events#index"

  get 'eventbrite/home', to: "events#index"
end
