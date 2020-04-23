class SeasController < ApplicationController
  #define your controller actions here

  def index
    @seas = Sea.all 
    # render :index    
  end

  def new
    @sea =Sea.new
  end

  def show
    @sea = Sea.find(params[:id])
    #render :show 
  end
  
  def create
    @sea = Sea.create(sea_params)
    render 'show.html' 
  end
  
  def edit
    @sea = Sea.find(params[:id])
    # render 'edit.html'
  end

  def update
    
  end
  
  
  
  
  private
  # In controller actions, use this private method to access sea params from forms.
  # Example: @sea.update(sea_params)
  # check the return value of sea_params to see what you're working with!
  def sea_params
    params.require(:sea).permit(:name, :temperature, :bio, :mood, :image_url, :favorite_color, :scariest_creature, :has_mermaids)
  end



end
