Rails.application.routes.draw do
  devise_for :users do
    resources :comments, only: [:create, :destroy]
    resources :interests, only: [:new, :create, :destroy]
    resources :visits, only: [:new, :create]
  end

  root to: 'countries#index'
  resources :countries, only: [:index, :show]
  get 'about', to: 'pages#about', as: 'about'
  get 'contact', to: 'pages#contact', as: 'contact'
end
