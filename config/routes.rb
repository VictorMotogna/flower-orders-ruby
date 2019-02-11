Rails.application.routes.draw do

  apipie
  
  namespace :api do
    namespace :v1 do
      resources :orders do
        member do
          get :show
          patch :update
          delete :destroy
        end
        collection do
          get :index
          post :create
        end
      end
      resources :flowers do
        member do
          get :show
        end
        collection do
          post :add_to_order
          get :index
        end
      end
    end
  end

  resources :orders do
    resources :flowers
  end
  
  root "orders#index"
end
