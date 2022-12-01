class Outfit < ApplicationRecord
  has_many :clothe_outfits, dependent: :destroy
  has_many :clothes, through: :clothe_outfits, dependent: :destroy
  belongs_to :user
end
