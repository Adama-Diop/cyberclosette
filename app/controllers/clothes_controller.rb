class ClothesController < ApplicationController

  # before_action :set_color, only: [:create]

  def create
    @clothe = Clothe.new(clothe_params)
    color = Color.find(params[:clothe][:color_id][1].to_i)
    @clothe.user = current_user
    @clothe.color = color
    @clothe.save!

    @clothe_cat = ClotheCategory.create!(
      clothe: @clothe,
      category: Category.find(params[:clothe][:category_ids][1].to_i)
    )

    @clothe_mood = ClotheMood.create!(
      clothe: @clothe,
      mood: Mood.find(params[:clothe][:mood_ids][1].to_i)
    )

    @clothe_season = ClotheSeason.new(
      clothe: @clothe,
      season: Season.find(params[:clothe][:season_ids][1].to_i)
    )

    if @clothe_season.save!
      redirect_to category_path(@clothe_cat.category)
    else
      render "new", status: :unprocessable_entity
    end
  end

  def new
    @clothe = Clothe.new
  end

  def index
    @clothes = Clothe.all
    @categories = Category.all
  end

  def show
  end

  def today_outfit
    @outfit = Outfit.where(user: current_user).find_by(date: Date.today)
    locked_clothes_count = @outfit ? @outfit.clothes.count : 0
    @locked_clothes = @outfit ? @outfit.clothes : []
    @categories = Category.all
    # @clothes = Clothe.all.sample(3 - locked_clothes_count)

    @top = Clothe.find_by_category("top", @locked_clothes)
    @top ||= Clothe.select_by_category("top").sample
    @bottom = Clothe.find_by_category("bottom", @locked_clothes)
    @bottom ||= Clothe.select_by_category("bottom").sample
    @shoes = Clothe.find_by_category("shoes", @locked_clothes)
    @shoes ||= Clothe.select_by_category("shoes").sample
    @clothes = [@top, @bottom, @shoes].uniq


    # si un outfit existe avec la date d'aujourdh'ui on affiche
    # sinon
    # on predn un fringue de chaque categories au hasard

    # @top =
    # @
  end

  private

  def clothe_params
    params.require(:clothe).permit(:photo, :color_id, :clothe_categories, :clothe_moods, :clothe_seasons)
  end

  def set_clothe
    @clothe = Clothe.find(params[:id])
  end

  def set_color
    @color = Color.find(params[:color_id])
  end
end
