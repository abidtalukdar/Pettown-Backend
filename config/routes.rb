Rails.application.routes.draw do
    resources :likes
    resources :comments
    resources :images
    resources :users

    get "/followees/:id", to: "users#followees" 
    get "/followers/:id", to: "users#followers"
    get "/users/:id", to: "users#show"
    get "/users", to: "users#index"
    get "/users/:id/images", to: "users#images"
    get "/users/:id/followees/images", to: "users#followees_images"
    get "/users/:id/suggested", to: "users#suggested_followees"
    get "/images/:id/likes", to: "images#likes"
    get "/images/:id/comments", to: "images#comments"


    post "/images", to: "images#create"
    post "/comments", to: "comments#create"
    post "/likes", to: "likes#create"
    post "/signup", to: "users#create"
    post "/login", to: "auth#login"
    post "/logout", to: "auth#logout"
    post "/follows", to: "follows#create"

    delete "/follows/:currentUserId/:followeeId", to: "follows#delete"
    delete "/likes/:imageId/:userId", to: "likes#delete"
    delete "/images/:id", to: "images#delete"
    delete "/comments/:id", to: "comments#delete"




  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
