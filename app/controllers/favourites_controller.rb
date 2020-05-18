class FavouritesController < ApplicationController
  def update
    favourite = Favourite.where(Listings: Listing.find(params[:listings]), user: current_user)
    if favourite == [] 
      # create the fave
      Favourite.create(listings: Listings.find(params[:listings]), user: current_user)
      @favourite_exists = true
    else 
      #delete the fave 
      Favourite.destroy.all
      @favourite_exists = false
  end
  respond_to do |format|
    format.html {}
    format.js {}
    end 
  end
end 