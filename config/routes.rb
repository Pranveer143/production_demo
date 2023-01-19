Rails.application.routes.draw do
  get 'temple/index'
  get 'temple/new'
  get 'temple/show'
  get 'temple/create'
  get 'temple/destroy'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
