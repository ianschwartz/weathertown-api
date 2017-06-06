Rails.application.routes.draw do
  resources :stations do
    resources :readings
  end
end
