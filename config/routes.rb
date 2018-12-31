Rails.application.routes.draw do
  devise_for :users
  get 'users/index' =>"users#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts
   get '/' => "posts#top"
   resources :users, only: [:show, :edit, :update]
end
  