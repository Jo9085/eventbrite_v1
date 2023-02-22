Rails.application.routes.draw do
  root "events#index"
  get 'eventbrite/home', to: "events#index"
  get 'event/new', to: "events#new"
  
  devise_for :users

  resources :users, only: [:show]

end
