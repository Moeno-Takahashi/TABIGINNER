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
      get :step4
      get :step5
      get :usage
      get :advice
      get :terms_of_use
    end
  end

  resource :plan, only: %i[show destroy] do
    resource :country, only: %i[new create edit update]
    resource :day, only: %i[edit update]
    resource :schedule, only: %i[edit update]
  end

  resources :tasks, only: %i[create destroy]
  resources :items, only: %i[create destroy]

  get :user_tasks, to: 'tasks#user_tasks'
  get :user_items, to: 'items#user_items'

  resources :user_tasks, only: %i[create destroy]
  resources :user_items, only: %i[create destroy]

  post '/callback' => 'linebot#callback'
  post '/line_user' => 'linebot#create'

  
end
