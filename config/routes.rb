Rails.application.routes.draw do
  resources :bands, only: [ :new, :create, :edit, :index ]
  resources :albums, only: [ :new, :create, :edit ]
  root to: 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
