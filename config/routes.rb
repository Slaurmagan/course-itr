Rails.application.routes.draw do
  resources :posts
  devise_for :users
  root to: 'posts#index'
  # get 'genres/search' => 'genres#search'
  get 'posts/search' => 'posts#search',as: 'posts_search'
  get 'profile/:id' => 'users#profile',as: 'user_profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
