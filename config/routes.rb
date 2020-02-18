Rails.application.routes.draw do
  resources :roles
  resources :permissions
  devise_for :users

  resources :action_plans do
    resources :b_fours
    resources :b_eights
    resources :b_twelves
  end

  
  resources :cities
  resources :years
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
