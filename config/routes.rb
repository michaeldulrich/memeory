Rails.application.routes.draw do

  root 'public#index'

  get 'public/index'
  get 'public/show'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
