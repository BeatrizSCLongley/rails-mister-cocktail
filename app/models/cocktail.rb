class Cocktail < ApplicationRecord
  # A cocktail must have a unique name
  validates :name, uniqueness: true, presence: true
  # A cocktail has many doses
  # and when you delete a cocktail + delete associated doses
  has_many :doses, dependent: :destroy
  # A cocktail has many ingredients through doses
  has_many :ingredients, through: :doses
  # Review
  has_many :reviews, dependent: :destroy
end
