Rails.application.routes.draw do
  # resources :outfit_items

  post '/login', to: 'users#login'
  # get '/:username', to:

  resources :users, only: [:index, :show] do
    # resources :outfits, only: [:index, :show, :create, :destroy]
    resources :outfits, only: [:index, :show]
  end

  resources :outfits
  # resources :outfits, only: [:create, :destroy]
  # resources :outfits, only: [:index, :show, :create, :destroy]
  resources :items, only: [:index, :show]
  resources :categories, only: [:index, :show]
  # get 'users/index'
  # get 'users/show'
  # get 'users/create'
  # get 'users/update'
  # get 'users/destroy'
  # post '/users/:id/outfits', to: 'users#create_outfit'

  # get 'users/items'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
