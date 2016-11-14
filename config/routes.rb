Rails.application.routes.draw do
  root 'words#index'

  resources :words do
    resources :definitions
  end

  get 'contributors', to: 'static_pages#contributors'
end
