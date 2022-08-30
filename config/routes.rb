Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'users/create'
      get 'users/index'
      get 'users/show'
      get 'donations/create'
      get 'conferences/create'
      get 'conferences/index'
      get 'conferences/show'
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
