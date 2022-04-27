class CategoriesController < ApplicationController

  def new
    @category = Category.new
  end

  def show
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to "/categories/new"
    end
  end

  def edit
  end

  def update
    @category = Category.find(params[:id])
    if @category.update!(category_params)
      redirect_to "/categories/new"
    end
  end

  private
  def category_params
    params.require(:category).permit(:title, :description)
  end
end
