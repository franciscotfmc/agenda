Agenda::Application.routes.draw do
  
  root to: 'appointments#index'

  resources :appointments do
  end
end
