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
        if @listing.errors.any?
            render "new"
        else
            redirect_to listings_path 
        end 
end 

    def edit
         @listing = current_user.listings.find_by_id(params["id"]) 
        
         if @listing 
            render("edit")
         else
            redirect_to listings_path

        end 
    end

    def update 
        @listing = current_user.listings.find_by_id(params["id"])

        if @listing
            @listing.update(listing_params)
            if @listing.errors.any?
                render "edit"
            else
                redirect_to listings_path 
            end
        else 
            redirect_to listings_path
        end 
end 

    def destroy 
        @listing = current_user.listings.find_by_id(params["id"])

        if @listing 
            @listing.destroy 
        end 
        redirect_to listings_path

    end 

    def show 
        @listing = Listing.find(params["id"])
    end 




    private 
    def listing_params
        params.require(:listing).permit(:title, :description, :condition, :price, :picture)
    end 

end 