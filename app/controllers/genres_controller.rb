class GenresController < ApplicationController
  
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
      params.require(:genre).permit(:name)
    end
  
  
end
