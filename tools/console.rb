require_relative '../config/environment.rb'
require 'Date'
oscar = User.new("oscar")
ali = User.new("ali")
carlos = User.new("Carlos")
martin = User.new("Martin")
chris = User.new("Chris")
charlotte = User.new("Charlotte")

pizza = Recipe.new("Pizza")
salsa = Recipe.new("Salsa")
pbj = Recipe.new("Peanut Butter & Jelly")

flour = Ingredient.new("flour")
gluten = Ingredient.new("gluten")
water = Ingredient.new("water")
yeast = Ingredient.new("yeast")
tomato = Ingredient.new("tomato")
garlic = Ingredient.new("garlic")
oregano = Ingredient.new("oregano") 
salt = Ingredient.new("salt") 
cheese = Ingredient.new("cheese")

onion = Ingredient.new("onion")
cilantro = Ingredient.new("cilantro")

peanut = Ingredient.new("peanut")
jelly = Ingredient.new("jelly")
bread = Ingredient.new("bread")

pizzaingredients = [flour, gluten, water, yeast, tomato, garlic, oregano, salt, cheese]
salsaingredients = [tomato, onion, garlic, cilantro]
pbjingredients = [peanut, jelly, bread, gluten]

pizza.add_ingredients(pizzaingredients)
salsa.add_ingredients(salsaingredients)
pbj.add_ingredients(pbjingredients)

date1 = Date.new(2001,2,3)
date2 = Date.new(2001,2,4)
date3 = Date.new(2001,2,5)

oscar.declare_allergy(peanut)
ali.declare_allergy(cilantro)
charlotte.declare_allergy(gluten)
charlotte.declare_allergy(peanut)

oscar.add_recipe_card(pizza, date1, 5)
oscar.add_recipe_card(pbj, date2, 1)

ali.add_recipe_card(pizza, date1, 5)
ali.add_recipe_card(salsa, date2, 2)
ali.add_recipe_card(pbj, date3, 5)

carlos.add_recipe_card(pbj, date1, 3)
carlos.add_recipe_card(salsa, date2, 3)

martin.add_recipe_card(pizza, date2, 2)
martin.add_recipe_card(salsa, date3, 4)

chris.add_recipe_card(pizza, date1, 5)
chris.add_recipe_card(salsa, date2, 5)
chris.add_recipe_card(pbj, date3, 5)

charlotte.add_recipe_card(pizza, date3, 2)
# charlotte.add_recipe_card(pbj, date3, 2)




binding.pry
