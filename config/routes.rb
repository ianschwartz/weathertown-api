Rails.application.routes.draw do
  resources :stations do
    resources :readings
  end

  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'
end
