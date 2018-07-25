Rails.application.routes.draw do
  resources :employees
  resources :results
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root :to => "employees#index"

get "/results" => "results#index"


end
