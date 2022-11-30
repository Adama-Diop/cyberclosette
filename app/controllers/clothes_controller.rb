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
    # algo pour choisir tenue
    # si un outfit existe avec la date d'aujourdh'ui on affiche
    # sinon
    # on predn un fringue de chaque categories au hasard

    # @top =
    # @
  end

  private

  def clothe_params
    params.require(:clothe).permit(:name, :picture)
  end

  def set_clothe
    @clothe = Clothe.find(params[:id])
  end

  def set_color
    @color = Color.find(params[:color_id])
  end
end
