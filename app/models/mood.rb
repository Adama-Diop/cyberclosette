class Mood < ApplicationRecord
  has_many :clothe_moods, dependent: :destroy
end
