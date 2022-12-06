class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @clothes = @category.clothes
    # @clothes = Clothe.joins(:categories).where(Category.name == @category.name)
  end
  def create
    @clothe = Clothe.new(clothe_params)
    @clothe.user = current_user
    if @clothe.save!
      redirect_to clothe_path(@clothe)
    else
      render "new", status: :unprocessable_entity
    end
  end
end
