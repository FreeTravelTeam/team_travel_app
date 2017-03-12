Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :articles
  
  get '/users/:id' => 'users#show', as: 'user'
  
  resources :articles do
  	resource :likes, only:[:create, :destroy]
  end
  
  resources :users, only: :show

  root 'articles#top'
  get '/users' => "users#index"
  
end