Rails.application.routes.draw do
  resources :sandwiches
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :articles
  get '/', to: "articles#helpers"
end
