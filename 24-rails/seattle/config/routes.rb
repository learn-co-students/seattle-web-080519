Rails.application.routes.draw do
  get '/my_custom_route', to: 'application#custom'

  resources :titles
  resources :landmarks
  resources :figures
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
