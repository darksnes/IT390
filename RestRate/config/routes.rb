Rails.application.routes.draw do
 
  devise_for :users
  
  resources :restrooms do
  	resources :reviews, except: [:index, :show]
  end 
 
  root 'restrooms#index'
  
  match '/about_us', to: 'pages#about_us', via: :get
  match '/contact_us', to: 'pages#contact_us', via: :get
end