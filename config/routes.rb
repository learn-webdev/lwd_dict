Rails.application.routes.draw do
  root 'words#index'

  resources :words

  get 'contributors', to: 'static_pages#contributors'
end
