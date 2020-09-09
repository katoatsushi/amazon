Rails.application.routes.draw do
  root 'product#index'
  resources :product, only: [:new, :create, :edit, :update, :show, :destroy] do
  	resources :user_product, only: [:create, :destroy]
  end
      devise_for :users, :controllers =>{
        sessions: 'users/sessions',
        registrations: 'users/registrations',
        passwords: 'users/passwords'
      }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
