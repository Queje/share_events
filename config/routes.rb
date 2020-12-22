Rails.application.routes.draw do
  devise_for :users

  resources :users, only: [:show] do
    resources :avatars, only: [:create]
  end
  
end
