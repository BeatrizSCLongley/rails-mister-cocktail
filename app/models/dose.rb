class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  # Somehow this first line wasn't on the solutions
  validates :description, :cocktail, :ingredient, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient }
end
