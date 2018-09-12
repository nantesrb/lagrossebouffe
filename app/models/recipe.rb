class Recipe < ApplicationRecord
  has_one_attached :image

  validates :title, :description, :ingredient, presence: true
end
