class CategoryController < ApplicationController
  def new
    @category = Category.new
    @categories = Category.all
  end
  def create
    @categories = Category.all
    @category = Category.new(category_params)
    if @category.save
      redirect_to :action => 'new'
    else
      render 'new'
    end
  end

  def edit
    @category = Category.find(params[:id]);
  end
  
  def update
    @category = Category.find(params[:id])
    @category.update_attributes(category_params)
    redirect_to :action => 'edit'
  end
  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to :action => 'new' 
  end

  def show
    @category= Category.find(params[:id])
  end

  private
  def category_params
    params.require(:category).permit(:name,:image,:tipo,:content)
  end
end
