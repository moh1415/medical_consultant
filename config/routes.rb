Rails.application.routes.draw do
  devise_for :users
  get "bootstrap", to: "home#bootstrap"
  get "bootstrap", to: "sessions#bootstrap"
  get "bootstrap", to: "registrations#new"

  devise_scope :user do
  match '/sessions/user', to: 'devise/sessions#create', via: :post
end
  resources :patients, :doctors, :sessions
  get 'home/home'
  get 'home/patient_dash'
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
