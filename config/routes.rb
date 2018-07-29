Rails.application.routes.draw do
  resources :standards
  resources :etc_std_vals
  resources :residence_std_vals
  resources :task_std_vals
  resources :evaluation_std_vals
  resources :position_std_vals
  resources :salaries
  resources :points
  resources :employees
  resources :results
  resources :homes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root :to => "homes#index"

get "/position_std_val/new" => "position_std_vals#new"
get "/evaluation_std_val/new" => "evaluation_std_vals#new"
get "/task_std_val/new" => "task_std_vals#new"
get "/residence_std_val/new" => "residence_std_vals#new"
get "/etc_std_val/new" => "etc_std_vals#new"

end
