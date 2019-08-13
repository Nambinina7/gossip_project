Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  resources :user
  resources :gossips do
    resources :comments
  end
	get 'user/:id', to:"user#show"
  get 'gossip/:id', to: 'gossip#show'

  root "welcome#show"
  resources :welcome, only: [:show]
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
