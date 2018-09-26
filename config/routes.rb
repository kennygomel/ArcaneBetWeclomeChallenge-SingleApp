Rails.application.routes.draw do
  root 'main#index'
  get 'main/index'
  post 'refresh', controller: :refresh, action: :create
  post 'signin', controller: :signin, action: :create
  post 'signup', controller: :signup, action: :create
  delete 'signin', controller: :signin, action: :destroy
  get 'me', controller: :user, action: :me

  resources :stock
  resources :user
end
