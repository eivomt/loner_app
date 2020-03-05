Rails.application.routes.draw do

  mount ActionCable.server => '/cable'

  devise_for :users
  root to: 'events#index'
  resources :events, only: [ :new, :create, :show, :edit, :update, :destroy ] do
    resources :event_users, only: [:create]
    resources :comments, only: [ :create ]
  end

  resources :event_users, only: :destroy

  resources :users, only: [:show] do
    member do
      post :follow
      post :unfollow
      patch :read_alerts
    end
  end
end

