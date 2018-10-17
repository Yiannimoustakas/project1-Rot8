Rails.application.routes.draw do
  root :to => "rotates#index"
  resources :sneakers
  resources :brands
  resources :rotates
  resources :users, except: [:index]
  get "/login" => "session#new"
  post "/login" => "session#create"
  delete "/login" => "session#destroy"
end
