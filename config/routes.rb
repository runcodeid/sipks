Rails.application.routes.draw do
  get 'dashboard/user'
  get 'dashboard/admin'

  resources :roles do
    resources :role_permissions, :only => [:index, :create]
  end

  resources :permissions

  devise_for :users
  devise_scope :user do
    authenticated :user do
      root 'dashboard#admin'
    end
  
    unauthenticated do
      root 'devise/sessions#new'
    end
    # root to: "devise/sessions#new"
  end
  scope "/management" do
    resources :users
  end

  resources :years, only: [:show, :index, :new, :create,:edit,:update,:destroy]
  
  resources :years, only: [:show, :index] do
    resources :action_plans do
      resources :b_fours, only: [:update]
      resources :b_eights, only: [:update]
      resources :b_twelves, only: [:update]
    end
  end



  resources :cities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
