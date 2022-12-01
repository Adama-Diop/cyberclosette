class Category < ApplicationRecord
  has_many :clothe_categories
  has_many :clothes, through: :clothe_categories
end
