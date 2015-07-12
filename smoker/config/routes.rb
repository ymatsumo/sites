Rails.application.routes.draw do
  root to: 'smoking_area#index'

  resources :smoking_area
end
