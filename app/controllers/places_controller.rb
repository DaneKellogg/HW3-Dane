class PlacesController < ApplicationController
    def index
        @places = 
    end

    def place
        @place = Place.find(params["id"])
    end

    def newplace
        @place = Place.new
    end

    def create
        @place = Place.new(params["place"])
        @place.save
        redirect_to "/places"
    end
    
    def destroy
        @place = Place.find(params["id"])
        @place.destroy
        redirect_to "/places"
    end

end

end
