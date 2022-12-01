class Color < ApplicationRecord
  has_many :clothes, dependent: :destroy
end
