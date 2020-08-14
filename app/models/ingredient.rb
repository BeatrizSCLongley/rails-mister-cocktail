class Ingredient < ApplicationRecord
  has_many :doses
  # Added this from the solutions even though it wasn't necessary for rake
  has_many :cocktails, through: :doses
  validates :name, uniqueness: true, presence: true
end
