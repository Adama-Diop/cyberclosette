class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @clothes = @category.clothes
    # @clothes = Clothe.joins(:categories).where(Category.name == @category.name)
  end
end
