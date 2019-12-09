Rails.application.routes.draw do

  post '/login', to: 'users#login'

  resources :users, only: [:index, :show] do
    resources :outfits, only: [:index, :show]
  end

  resources :outfits, only: [:create, :destroy]


  resources :categories, only: [:index, :show]

  # get 'users/create'
  # get 'users/update'
  # get 'users/destroy'
  # post '/users/:id/outfits', to: 'users#create_outfit'

end
