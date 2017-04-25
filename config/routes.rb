Rails.application.routes.draw do

  root 'public#index'

  resources :public, :only => [:index, :show]

  resources :users do
    member do
      get :delete
    end
  end

  resources :memes do
    member do
      get :delete
    end
  end

  get 'access/login'
  post 'access/attempt_login'
  get 'access/logout'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
