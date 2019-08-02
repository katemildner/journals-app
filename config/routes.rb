Rails.application.routes.draw do

 resources :entries

 root 'journal#index'
end
