require_relative '../config/environment.rb'

ri1 = RecipeIngredient.new("tomato", "Marinara")
ri2 = RecipeIngredient.new("pistachio", "baklava")
ri3 = RecipeIngredient.new("wheat", "bread")

u1 = User.new("Ross")
u2 = User.new("Cihat")
u3 = User.new("LongFen")
u4 = User.new("Frederik")


a1 = Allergy.new("Ross", "milk")
a2 = Allergy.new("Cihat", "almonds")
a3 = Allergy.new("Frederik", "lutefish")
a4 = Allergy.new("Toby", "poison")
a5 = Allergy.new("Keith", "poison")
a6 = Allergy.new("Charlie", "poison")






ing1 = Ingredient.new("tomato")
ing2 = Ingredient.new("salmon")
ing3 = Ingredient.new("olives")

rec1 = Recipe.new("Pizza", ["cheese", 'sauce', 'pepps'])
rec2 = Recipe.new("Ice Cream", ["milk", 'sugar', 'eggs', 'almond'])
rec3 = Recipe.new("French Toast", ["bread", 'cinnamon', 'eggs'])
rec4 = Recipe.new("Pickled Fish", ["vinegar", "pepper", "lutefish"] )

rc1 = RecipeCard.new(u2, rec1, 5, "2019-07-23")
rc2 = RecipeCard.new(u3, rec2, 98, "1994/04/04")
rc3 = RecipeCard.new(u1, rec3, 54, "2014/02/28")
rc4 = RecipeCard.new(u1, "poop sundae", 60, "1994/02/28")
rc5 = RecipeCard.new(u1, "poop souffle", 45, "1994/02/28")
rc6 = RecipeCard.new(u1, "poop stick", 20, "1994/01/28")
rc7 = RecipeCard.new(u2, "poop stick", 23, "1994/03/28")
rc8 = RecipeCard.new(u3, "poop stick", 22, "1994/04/28")
rc9 = RecipeCard.new(u4, "poop stick", 21, "1994/05/28")


binding.pry
puts 'fin'
