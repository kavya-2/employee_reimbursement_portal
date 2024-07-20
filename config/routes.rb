Rails.application.routes.draw do
  resources :employees
  resources :bills, only: [:new, :create, :index, :show, :edit, :update]

  root 'employees#index'
end
