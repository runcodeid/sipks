Rails.application.routes.draw do
  resources :roles
  resources :permissions
  devise_for :users
  resources :b_twelves
  resources :b_eights
  resources :b_fours
  resources :action_plans
  resources :cities
  resources :years
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
