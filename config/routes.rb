Rails.application.routes.draw do
  resources :trains do
    resources :carriges
  end

  resources :railway_stations do
    patch :update_position, on: :member
  end

  resource :search, only: :show do
    post :show
  end

  resources :tickets

  resources :routes
end
