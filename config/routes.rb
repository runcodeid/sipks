Rails.application.routes.draw do
  # get 'dashboard/user'
  # get 'dashboard/admin'

  resources :roles do
    resources :role_permissions
  end

  # resources :permissions

  devise_for :users, :skip => [:registrations] 
  as :user do
    get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'    
    put 'users/edit' => 'devise/registrations#update', :as => 'user_registration'            
  end
  devise_scope :user do
    authenticated :user do
      root 'dashboard/cities#index'
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
  
  # resources :years, only: [:show, :index] do
  #   resources :action_plans do
  #     resources :b_fours, only: [:update]
  #     resources :b_eights, only: [:update]
  #     resources :b_twelves, only: [:update]
  #   end
  # end



  resources :cities


  # scope "/dashboard" do
  namespace :dashboard do #admin,user
    resources :cities, only: [:show,:index,:update] do #admin
      resources :years, only: [:show,:index] do #admin,user
        resources :action_plans do #admin,user
          resources :b_fours, only: [:update] #admin,user
          resources :b_eights, only: [:update] #admin,user
          resources :b_twelves, only: [:update] #admin,user
        end
      end
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
