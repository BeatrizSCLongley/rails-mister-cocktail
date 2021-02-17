class Dose < ApplicationRecord
  # A dose must have a description, a cocktail and an ingredient,
  # and [cocktail, ingredient] pairings should be unique
  validates :description, :cocktail, :ingredient, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient }
  # A dose belongs to an ingredient
  belongs_to :ingredient
  # A dose belongs to a cocktail
  belongs_to :cocktail
end
