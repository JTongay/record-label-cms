Rails.application.routes.draw do

  root to: 'welcome#index'

  resources :bands, only: [ :new, :create, :edit, :index, :show ] do
    resources :albums, only: [ :new, :create, :edit, :show ]
  end

  resources :members
  
  # session stuff
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :albums, only: [ :new, :create, :edit, :index, :show ]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
