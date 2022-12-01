class Outfit < ApplicationRecord
  has_many :clothe_outfits, dependent: :destroy

  has_many :clothes, through: :clothe_outfits, dependent: :destroy

  belongs_to :user

  def self.find_for_today(a_user)
    Outfit.find_by(user: a_user, date: Date.today)
  end
end
