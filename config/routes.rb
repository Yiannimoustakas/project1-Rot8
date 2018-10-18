Rails.application.routes.draw do
  root :to => "rotates#index"
  resources :sneakers
  resources :brands
  resources :rotates do
    member do
      put "like" => "rotates#upvote"
      put "unlike" => "rotates#downvote"
    end
  end
  resources :users, except: [:index]
  get "/login" => "session#new"
  post "/login" => "session#create"
  delete "/login" => "session#destroy"
end
