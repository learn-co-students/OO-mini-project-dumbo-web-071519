require_relative '../config/environment.rb'

janet = User.new("Janet")
lisa = User.new("Lisa")

cake = Recipe.new("Cake")
soup = Recipe.new("Soup")
pie = Recipe.new("Pie")
scones = Recipe.new("Scones")

card1 = RecipeCard.new("2009-07-01", 3, janet, cake)
card2 = RecipeCard.new("2010-07-04", 5, lisa, cake)
card3 = RecipeCard.new("2015-03-21", 2, janet, soup)
card4 = RecipeCard.new("2004-03-21", 4, janet, scones)
card5 = RecipeCard.new("2014-12-30", 1, lisa, pie)
card6 = RecipeCard.new("2011-05-20", 5, lisa, scones)
card7 = RecipeCard.new("2010-03-05", 3, janet, pie)
card8 = RecipeCard.new("2012-06-23", 5, lisa, soup) 

flour = Ingredient.new("Flour")
eggs = Ingredient.new("Eggs")
milk = Ingredient.new("Milk")
butter = Ingredient.new("Butter")
sugar = Ingredient.new("Sugar")

r_ing1 = RecipeIngredient.new(cake, flour)
r_ing2 = RecipeIngredient.new(pie, flour)
r_ing3 = RecipeIngredient.new(scones, flour)
r_ing4 = RecipeIngredient.new(cake, eggs)
r_ing5 = RecipeIngredient.new(cake, milk)
r_ing6 = RecipeIngredient.new(cake, butter)
r_ing7 = RecipeIngredient.new(cake, sugar)

lactose1 = Allergy.new(janet, milk)
lactose2 = Allergy.new(lisa, milk)
sugar_allergy = Allergy.new(lisa, sugar)


binding.pry

0