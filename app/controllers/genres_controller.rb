class GenresController < ApplicationController

    def show
        @genre = Genre.find(params[:id])
    end

    def new

    end

    def create
        @genre = Genre.create(set_params)
        redirect_to genre_path(@genre)
    end

    def edit
        @genre = Genre.find(params[:id])
    end

    def update
        @genre = Genre.update(set_params)
        redirect_to genre_path(@genre)
    end

    private

    def set_params
        params.require(:genre).permit(:name)
    end

end
