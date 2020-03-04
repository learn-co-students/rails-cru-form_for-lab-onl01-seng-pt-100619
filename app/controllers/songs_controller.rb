class SongsController < ApplicationController

    def index
        @songs = Song.all 
    end 

    def new 
        @song = Song.new
    end

    def show
        set_song
    end 

    def create
        @song = Song.create(set_params)
        redirect_to song_path(@song)
    end 

    def edit
        set_song
    end 

    def update
        set_song
        @song = Song.update(set_params)
        redirect_to song_path(@song)
    end 

    private

    def set_song
        @song = Song.find(params[:id])
    end 

    def set_params
        params.require(:song).permit(:name, :genre_id, :artist_id)
    end
end 