Rails.application.routes.draw do
  resources :orders do
    resources :flowers
  end
  
  root "orders#index"
end
