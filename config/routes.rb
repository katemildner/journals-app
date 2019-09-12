Rails.application.routes.draw do

  devise_for :users
 resources :entries

 root 'journal#index'
end
