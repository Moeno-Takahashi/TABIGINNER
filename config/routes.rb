Rails.application.routes.draw do
  resource :user, only: %i[new create show edit update destroy]
end
