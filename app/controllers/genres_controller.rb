class GenresController < ApplicationController

    def index 
        @genres = Genre.all 
    end 

    def new 
        @genre = Genre.new 
    end 

    def show 
        @genre = Genre.find(params[:id]) 
    end 

    def create 
        @genre = Genre.create(params.require(:genre).permit(:name))
        @genre.save 
           redirect_to genre_path(@genre) 
    end 

    def edit 
        @genre = Genre.find(params[:id]) 
    end 

    def update 
        @genre = Genre.update(params.require(:genre).permit(:name)) 
           redirect_to genre_path(@genre) 
    end 
    
end
