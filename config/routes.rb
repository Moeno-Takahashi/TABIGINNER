Rails.application.routes.draw do
  resource :user, only: %i[new create show edit update destroy]
  resources :user_sessions, only: %i[create]
  get :login, to: 'user_sessions#new'
  post :login, to: 'user_sessions#create'
  get :logout, to: 'user_sessions#destroy'
end
