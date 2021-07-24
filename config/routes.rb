Rails.application.routes.draw do
  root 'homes#index'

  resource :user, only: %i[new create show edit update destroy]

  resources :user_sessions, only: %i[create]
  get :login, to: 'user_sessions#new'
  post :login, to: 'user_sessions#create'
  get :logout, to: 'user_sessions#destroy'

  resource :home do
    collection do
      get :step1
      get :step2
      get :step3
    end
  end

  resource :plan, only: %i[show] do
    resource :country, only: %i[new create edit update]
    resource :day, only: %i[edit update]
    resource :schedule, only: %i[edit update]
  end

  
end
