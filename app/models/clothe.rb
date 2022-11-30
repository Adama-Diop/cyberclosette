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
end
