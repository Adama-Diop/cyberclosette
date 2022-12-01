class Season < ApplicationRecord
  has_many :clothe_seasons, dependent: :destroy
end
