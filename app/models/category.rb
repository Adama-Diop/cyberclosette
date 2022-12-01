class Category < ApplicationRecord

  has_many :clothe_categories, dependent: :destroy

  has_many :clothes, through: :clothe_categories
end
