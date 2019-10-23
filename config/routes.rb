Rails.application.routes.draw do
  # resources :outfit_items

  post '/login', to: 'users#login'
  # get '/:username', to:

  resources :users do
    resources :outfits, only: [:index, :create, :destroy]
  end


  # resources :outfits
  # resources :items
  resources :categories
  # get 'users/index'
  # get 'users/show'
  # get 'users/create'
  # get 'users/update'
  # get 'users/destroy'
  # post '/users/:id/outfits', to: 'users#create_outfit'

  # get 'users/items'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
