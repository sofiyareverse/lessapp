Rails.application.routes.draw do
  devise_for :passengers, path: 'passengers'
  devise_for :admins

  namespace :admins do
    resources :trains do
      resources :carriges
    end

    resources :railway_stations do
      patch :update_position, on: :member
    end

    resources :routes

    resource :search, only: :show do
      post :show
    end
  
    resources :tickets
  end

  namespace :passenger do
    resource :search, only: :show do
      post :show
    end
  
    resources :tickets
  end

  resource :search, only: :show do
    post :show
  end

  root to: 'search#show'
end
