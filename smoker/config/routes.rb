Rails.application.routes.draw do
  root to: 'smoking_areas#index'

  get "service/about"
  get "service/contact"
  resources :smoking_areas do
    collection do
      get :locale
    end
  end
end
