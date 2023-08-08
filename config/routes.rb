Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do
    resources :users, only: [:create, :index] do 
      collection do
        get 'login'
      end
    end
    resources :user_ticket, only: [:create, :index, :show]
    resources :ticket, only: [:create, :index, :show]
  end
end
