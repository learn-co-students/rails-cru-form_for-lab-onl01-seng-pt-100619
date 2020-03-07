class SongsController < ApplicationController
  def new 
  end
  
  def create 
  end 
  
  def show 
  end
  
  def edit 
  end
  
  def update
  end 
  
  def index 
  end
  
  private 
    def obj_params
      params.require(:song).permit(:name, :artist_id, :genre_id)
    end

end
