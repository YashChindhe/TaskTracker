Rails.application.routes.draw do
  devise_for :users

  resources :projects do
    resources :tasks, only: [:create, :update]
  end

  root "projects#index"
end
