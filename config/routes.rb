Rails.application.routes.draw do
    resources :show_rooms
    resources :users, only: [:index, :create]
    resources :reviews, only: [:index, :show, :create, :destroy]
    resources :cars, only: [:index, :show, :create, :update, :destroy]
   #register new user
    post "/users/signup", to: "users#signup"
    post "/users/login", to: "users#login"
    delete "/users/logout", to: "users#destroy"
    post "sessions/signup", to: "sessions#signup"
   
    post '/reviews/create', to: 'reviews#create'
    delete '/reviews/delete', to: 'reviews#destroy'
    post '/cars/create', to: 'cars#create'
end
