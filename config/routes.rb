Rails.application.routes.draw do
 
   resources :users do
    resources :posts
  end

  resources :posts do
    resources :comments
  end
  
  root 'users#index'
end
