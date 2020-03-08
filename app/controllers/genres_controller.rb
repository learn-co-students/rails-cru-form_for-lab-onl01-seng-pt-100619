class GenresController < ApplicationController
  
    def new 
      @genre = Genre.new
  end
  
  def create 
    @genre = Genre.new(obj_params)
    @genre.save
    redirect_to genre_path(@genre)
  end 
  
  def show 
    @genre = Genre.find(params[:id])
  end
  
  def edit 
    @genre = Genre.find(params[:id])
  end
  
  def update
    @genre = Genre.find(params[:id])
    @genre.update(obj_params)
    redirect_to genre_path(@genre)
  end 
  
  def index 
  end
  
  private 
    def obj_params
      params.require(:genre).permit(:name)
    end
  
  
end
