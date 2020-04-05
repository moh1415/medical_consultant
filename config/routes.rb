Rails.application.routes.draw do
  get "bootstrap", to: "home#bootstrap"
  get "bootstrap", to: "sessions#bootstrap"
  resources :patients, :doctors, :sessions
  get 'home/home'
  get 'home/patient_dash'
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
