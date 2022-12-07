class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :clothes, dependent: :destroy
  has_many :outfits, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_one_attached :photo
end
