Rails.application.routes.draw do

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  # replacing this section of code with the above to prepare to recieve the FB callback
  # devise_for :users do
  #   #resources :comments, only: [:create, :destroy]
  #   resources :interests, only: [:new, :create, :destroy]
  #   resources :visits, only: [:new, :create]
  #end

  root to: 'countries#index'
  resources :countries, only: [:index, :show]
  get 'about', to: 'pages#about', as: 'about'
  get 'contact', to: 'pages#contact', as: 'contact'
end
