Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create, :update, :show] do
      resources :reviews, only: :index
    end
    resource :session, only: [:create, :destroy]
    resources :bizs, only: [:index, :show] do
      resources :reviews, only: :create
    end
    resources :uploads, only: [:create]
    resources :reviews, only: [:update, :destroy]
  end

  root "static_pages#root"
end
