Rails.application.routes.draw do
  root to: 'smoking_area#index'

  get "service/about"
  get "service/contact"
  resources :smoking_area do
    collection do
      get :locale
    end
  end
end
