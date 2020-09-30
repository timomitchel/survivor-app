Rails.application.routes.draw do
  root :to =>"welcome#index"
  resources :welcome, only: ["index"]

  post '/user_team', :to => 'userteams#create', as: 'make_pick'

  resources :users, only: [:new, :create, :edit, :update, :show]

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create', as: "create_session"
  delete '/session', to: 'sessions#destroy', as: "delete_session"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
