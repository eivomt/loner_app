Rails.application.routes.draw do

  mount ActionCable.server => '/cable'



  devise_for :users
  root to: 'events#index'
  resources :events, only: [ :new, :create, :show ] do
    resources :event_users, only: [:create]
    resources :comments, only: [ :create ]
  end


  resources :event_users, only: :destroy

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

