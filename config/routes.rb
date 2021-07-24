Rails.application.routes.draw do
  resources :user_sessions, only: %i[create]
  get :login, to: 'user_sessions#new'
  post :login, to: 'user_sessions#create'
end
