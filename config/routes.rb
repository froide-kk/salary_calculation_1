Rails.application.routes.draw do
  resources :employees
  resources :results
  resources :homes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root :to => "homes#index"



end
