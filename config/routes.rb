Rails.application.routes.draw do
  devise_for :users
  root to: "questions#index"
  resources :questions, only: [:index, :new]
  resources :users, only: [:show]
  resources :scores, only: [:create]
end
