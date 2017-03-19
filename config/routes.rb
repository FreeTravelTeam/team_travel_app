Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  resources :articles do
  	resource :likes, only: [:create, :destroy]
  end

  resources :users, only:[:show, :index]
  resources :comments, only:[:create]

  root 'articles#top'

end
