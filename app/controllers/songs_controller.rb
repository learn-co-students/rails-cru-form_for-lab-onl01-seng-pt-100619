class SongsController < ApplicationController

    def show
        @song = Song.find(params[:id])
    end

    def new
    end

    def create
        @song = Song.create(set_params)
        redirect_to song_path(@song)
    end

    def edit
        @song = Song.find(params[:id])
    end

    def update
        @song = Song.update(set_params)
        redirect_to song_path(@song)
    end

    def index
        @songs = Song.all
    end

    private

    def set_params
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end


end
