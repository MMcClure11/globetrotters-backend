Rails.application.routes.draw do

  
  # I want my api to be travelor.com/api/v1/resource
  namespace :api do
    namespace :v1 do
      resources :users
      resources :locations
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
