class Ingredient < ApplicationRecord
  # An ingredient must have a unique name
  validates :name, uniqueness: true, presence: true
  # An ingridient has many doses
  has_many :doses

  # You cant delete an ingredient if it is used by at least one cocktail.
  # A cocktail has many ingredients through doses - not needed for rake?
  has_many :cocktails, through: :doses
end
