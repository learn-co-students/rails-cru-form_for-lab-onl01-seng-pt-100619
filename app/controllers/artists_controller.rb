class ArtistsController < ApplicationController
  
  def new 
    @artist = Artist.new
  end
  
  def create
    @artist = Artist.new(obj_params)
    @artist.save
    redirect_to artist_path(@artist)
  end 
  
  def show 
    @artist = Artist.find(params[:id])
  end
  
  def edit 
    @artist = Artist.find(params[:id])
  end
  
  def update
    @artist = Artist.find(params[:id])
    @artist.update(obj_params)
    redirect_to artist_path(@artist)
  end 
  
  def index 
  end
  
  def show 
    @artist = Artist.find(params[:id])
  end
  
  private 
    def obj_params
      params.require(:artist).permit(:name, :bio)
    end
end
