Rails.application.routes.draw do
  resources :smoking_area, only: %i(index)
end
