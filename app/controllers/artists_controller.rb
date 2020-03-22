class ArtistsController < ApplicationController

    def show
        @artist = Artist.find(params[:id])
    end

    def new

    end

    def create
        @artist = Artist.create(set_params)
        redirect_to artist_path(@artist)
    end

    def edit
        @artist = Artist.find(params[:id])
    end

    def update
        @artist = Artist.update(set_params)
        redirect_to artist_path(@artist)
    end

    private

    def set_params
        params.require(:artist).permit(:name, :bio, :id)
    end
end
