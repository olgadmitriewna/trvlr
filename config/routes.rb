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
  resources :user_places, only: [:create]
  post 'visas/:id/user_visas', to: 'user_visas#create', as: :new_user_visa

  get 'about', to: 'pages#about', as: 'about'
  get 'contact', to: 'pages#contact', as: 'contact'
  get 'profile/:id', to: 'pages#profile', as: 'profile'
  get 'visa_info', to: 'countries#visa_info', as: 'visa_info'
  post 'phrases/:id/user_phrases', to: "user_phrases#create", as: :new_user_phrase
  post 'countries/:id/visits', to: "visits#create", as: :country_visits

end

