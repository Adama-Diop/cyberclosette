class Category < ApplicationRecord
  has_many :clothe_categories, dependent: :destroy
end
