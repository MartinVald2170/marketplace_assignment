Rails.application.routes.draw do
  devise_for :users
get "/", to: "pages#home", as: "route"

get "/listings", to: "listings#index" , as: "listings"

get "/listings/new", to: "listings#new" , as: "new_listing"
end
