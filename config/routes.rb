Rails.application.routes.draw do
 get :journal, to: 'journal#index'

 resources :entries
end
