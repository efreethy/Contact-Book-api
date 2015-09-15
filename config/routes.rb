Rails.application.routes.draw do
  resources :users, except: [:new, :edit] do
    resources :contacts, only: [:index]
    resources :comments, only: [:index]
  end
  resources :contacts, except: [:new, :edit, :index]
  resources :contact_shares, only: [:create, :destroy]

  # map.resources :users, :has_many => :comments
  # map.resources :contacts, :has_many => :comments
        # get "/users/new", to:"users#new"
    # post "/users", to:"users#create"
    # get "/users/:id/edit", to:"users#edit"
    # get "/users/:id", to:"users#show"
    # patch "/users/:id", to:"users#update"
    # put "/users/:id", to:"users#update"
    # delete "/users/:id", to:"users#destroy"

end
