Rails.application.routes.draw do

  root 'public#index'

  resources :public, :only => [:index, :show]

  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
