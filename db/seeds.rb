# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ing_serialized = open(url).read
ing = JSON.parse(ing_serialized)

ing['drinks'].each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
end

Cocktail.create(name: "Margarita")
Cocktail.create(name: "Mojito")

# Using the json url - you select the element you want to iterate over
# ing = json parsing - calling the key inside the hash / object - ing['drinks']
# Next step is to iterate over the key, to get inside the hashes inside the array
# You could do it by saying ingridient["strIngredient1"]
# Ingridient.create(name: ... ) - to create an instance of ingridient with the value
