Rails.application.routes.draw do
  resources :stations do
    resources :readings, except: :show
  end

  resources :readings, only: :show

  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'
end
