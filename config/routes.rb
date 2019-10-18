Rails.application.routes.draw do
  resources :outfit_items
  resources :outfits
  resources :items
  resources :categories
  # get 'users/index'
  # get 'users/show'
  # get 'users/create'
  # get 'users/update'
  # get 'users/destroy'
  resources :users

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
