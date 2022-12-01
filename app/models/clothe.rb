class Clothe < ApplicationRecord
  belongs_to :user
  belongs_to :color
  has_many :clothe_moods
  has_many :moods, through: :clothe_moods
  has_many :clothe_categories
  has_many :categories, through: :clothe_categories
  has_many :clothe_seasons
  has_many :seasons, through: :clothe_seasons
  has_many :clothe_outfits
  has_many :outfits, through: :clothe_outfits

  def self.select_by_category(category_name, clothes = [])
    clothes = clothes.empty? ? all : clothes
    clothes.select do |clothe|
      clothe.categories.any? do |cat|
        cat.name == category_name
      end
    end
  end

  def self.find_by_category(category_name, clothes = [])
    select_by_category(category_name, clothes).first
  end
end
