# frozen_string_literal: true

Rails.application.routes.draw do
  resources :attendance
  root to: 'users#login'

  # root to: 'users#index'
  

  resources :users do
    member do
      get :delete
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
