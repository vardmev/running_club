Rails.application.routes.draw do
  resources :personal_records

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users do
    resources :personal_records, only: [:create, :index, :new]
  end
end
