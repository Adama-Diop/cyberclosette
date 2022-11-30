class Outfit < ApplicationRecord
  has_many :clothe_outfits
  has_many :clothes, through: :clothe_outfits
  belongs_to :user
end
