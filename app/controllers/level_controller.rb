class LevelController < ApplicationController 
  before_action :logg
  def new
    @level = @category.levels.new
    @levels = @category.levels.all
  end
  def create
    @levels = @category.levels.all
    @level = @category.levels.new(level_params)
    @level.save
    redirect_to :action => 'new'
  end

  def show
  end


  def edit
    @level = @category.levels.find(params[:id])
  end

  def update
    @level = @category.levels.find(params[:id])
    @level.update_attributes(level_params)
    redirect_to :action => 'edit'
  end
  def destroy
    @level = @category.levels.find(params[:id])
    @level.destroy
    redirect_to :action => 'new'
  end
  
  private
  def level_params
    params.require(:level).permit(:name,:image,:content,:tipo)
  end
  def logg
    @category = Category.find(params[:category_id])
  end
end
