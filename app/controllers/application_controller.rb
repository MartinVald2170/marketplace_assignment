class ApplicationController < ActionController::Base
    def favourite_text
        return @favourite_exists ? "Unfavourite" : "Favourite"

    end
    helper_method :favourite_text
end
