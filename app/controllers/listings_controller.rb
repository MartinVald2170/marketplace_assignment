class ListingsController < ApplicationController 
        before_action :authenticate_user!
    def index 
        @listings = Listing.all 
        end

    def new
        @listing = Listing.new 
    end

    def create
      @listing =  current_user.listings.create(listing_params)
       puts @listing.errors.any?
      redirect_to listings_path  
    end 

    private 
    def listing_params
        params.require(:listing).permit(:title, :description, :condition, :price, :picture)
    end 
end 