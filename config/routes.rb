Rails.application.routes.draw do
  get 'dashboard/user'
  get 'dashboard/admin'
  resources :roles
  resources :permissions
  devise_for :users

  resources :years, only: [:show, :index, :new, :create,:edit,:update,:destroy]
  
  resources :years, only: [:show, :index] do
    resources :action_plans do
      resources :b_fours
      resources :b_eights
      resources :b_twelves
    end
  end

  resources :cities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
