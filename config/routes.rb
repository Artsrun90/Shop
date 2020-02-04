Rails.application.routes.draw do
  post 'customer_token' => 'customer_token#create'
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  resources :employees
  resources :shippers
  resources :customers
  resources :suppliers
  resources :categories
end
