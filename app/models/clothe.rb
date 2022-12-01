class Clothe < ApplicationRecord
  belongs_to :user
  belongs_to :color
  has_many :clothe_moods, dependent: :destroy
  has_many :moods, through: :clothe_moods, dependent: :destroy
  has_many :clothe_categories, dependent: :destroy
  has_many :categories, through: :clothe_categories, dependent: :destroy
  has_many :clothe_seasons, dependent: :destroy
  has_many :seasons, through: :clothe_seasons, dependent: :destroy
  has_many :clothe_outfits, dependent: :destroy
  has_many :outfits, through: :clothe_outfits, dependent: :destroy
  has_one_attached :photo

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
