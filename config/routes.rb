Quicreel::Application.routes.draw do
  root to: 'home#index'

  resource :users
  resource :sessions, only: [:new, :create]
end
