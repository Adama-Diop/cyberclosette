class ClothesController < ApplicationController
  before_action :set_clothe, only: [:show]
  before_action :set_color, only: [:new, :create]

  def create
    @clothe = Clothe.new(clothe_params)
    @clothe.user = current_user
    if @clothe.save
      redirect_to clothe_path(@clothe)
    else
      render "new", status: :unprocessable_entity
    end
  end

  def new
    @clothe = Clothe.new
  end

  def index
    @clothes = Clothe.all
  end

  def show
  end

  def today_outfit
    @outfit = Outfit.where(user: current_user).find_by(date: Date.today)
    locked_clothes_count = @outfit ? @outfit.clothes.count : 0
    @locked_clothes = @outfit ? @outfit.clothes : []
    @clothes = Clothe.all.sample(3 - locked_clothes_count)
    # si un outfit existe avec la date d'aujourdh'ui on affiche
    # sinon
    # on predn un fringue de chaque categories au hasard

    # @top =
    # @
  end

  private

  def clothe_params
    params.require(:clothe).permit(:picture)
  end

  def set_clothe
    @clothe = Clothe.find(params[:id])
  end

  def set_color
    @color = Color.find(params[:color_id])
  end
end
