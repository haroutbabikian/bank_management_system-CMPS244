Rails.application.routes.draw do
  resources :customers
  resources :accounts
  resources :transactions
  resources :loans
  resources :employees
end
