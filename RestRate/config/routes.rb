Rails.application.routes.draw do
  devise_for :users
  resources :restrooms
  root 'restrooms#index'
  
  #get :show, :id => @restrooms.id
  #get '/restrooms/:id', to: 'restrooms#show'
  #match '/restrooms/:id', to: 'restrooms#show', via: :get

  match '/about_us', to: 'pages#about_us', via: :get
  match '/contact_us', to: 'pages#contact_us', via: :get
end

# restroom     /restrooms/:id(.:format)       restrooms#show
