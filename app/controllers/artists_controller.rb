class ArtistsController < ApplicationController
    def index
        @artist = Artist.all
    end
    
    def show
        @artist = Artist.find(params[:id])
    end

    def new
        @artist = Artist.new
    end

    def create 
        @artist = Artist.create(name: params[:name], bio: params[:bio])
        redirect_to artist_path(@artist)
    end


end
