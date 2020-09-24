Rails.application.routes.draw do

  root to: 'users#index'
  devise_for :admins, controllers: { omniauth_callbacks: 'admins/omniauth_callbacks' }
  devise_scope :admin do
    get 'admins/sign_in', to: 'admins/sessions#new', as: :new_admin_session
    get 'admins/sign_out', to: 'admins/sessions#destroy', as: :destroy_admin_session
  end
  
  # devise_for :admins
  # root 'users#index'

  resources :users do
    member do
      get :delete
    end
  end
  #get 'users/show'
  #get 'users/new'
  #get 'users/edit'
  #get 'users/delete'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
