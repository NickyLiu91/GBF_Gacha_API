Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :summons
  namespace :api do
    namespace :v1 do

      resources :summons do
        resources :summons
      end

    end
  end
end
