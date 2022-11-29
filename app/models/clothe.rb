class Clothe < ApplicationRecord
  belongs_to :user
  belongs_to :color
  has_many :clothe_moods, :clothe_seasons, :clothe_categories, :clothe_outfits
end
