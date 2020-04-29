Rails.application.routes.draw do
  resources :appointments, only: [:show]
  resources :doctors, only: [:show]
  resources :patients, only: [:show, :index]
  resources :appointments, only: [:show]
end
