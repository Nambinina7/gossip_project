Rails.application.routes.draw do
  resources :user
  resources :gossips do
    resources :comments
  end
	get 'user/:id', to:"user#show"
  get 'gossip/:id', to: 'gossip#show'
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
