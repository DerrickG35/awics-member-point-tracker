Rails.application.routes.draw do

  root 'users#index'

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
