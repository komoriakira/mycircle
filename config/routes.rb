Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'suzus/top' => 'suzus#top'
  get 'suzus/top2' => 'suzus#top2'
  get 'tweets/index' => 'tweets#index'
  get 'tweets/new' => 'tweets#new'
  resources :suzus
  resources :tweets do
    resources :likes, only: [:create, :destroy]
   
  end
  resources :perfumes
  root 'suzus#top'

end

