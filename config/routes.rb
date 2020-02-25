Rails.application.routes.draw do
  devise_for :users
  root to: 'events#index'
  resources :events, only: [ :new, :create, :show ]
  resources :users, only: :show
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :event_user, only: [ :destroy, :index, :show ] do
      member  do
        post 'join', to: "event_user#join"
      end
    end

end

