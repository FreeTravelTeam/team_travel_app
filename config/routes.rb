Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  resources :articles do
  	resource :likes, only: [:create, :destroy]
  end

  resources :users, only:[:show, :index]
  resources :images, only:[:create, :destroy]

  get 'search/index' => 'articles#index', as: :search
  root 'articles#top'

end
