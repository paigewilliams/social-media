Rails.application.routes.draw do
  resources :users do
    resources :links
  end
  resources :links do
    resources :comments
  end
  resources :users do
    resources :comments
  end
end
