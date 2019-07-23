require_relative '../config/environment.rb'

ashna = User.new("Ashna")
janet = User.new("Janet")
cihad = User.new("Cihad")
jack = User.new("Jack")
nicky = User.new("Nicky")
eric = User.new("Eric")
megan = User.new("Megan")
jason = User.new("Jason")

lasagna = Recipe.new("Lasagne")
dal = Recipe.new("Dal")
bohemian_soup = Recipe.new("Bohemian Soup")
clam_linguine = Recipe.new("Clam Linguine")
water_spinach = Recipe.new("Steamed Water Spinach")
iced_matcha = Recipe.new("Iced Matcha")

matcha = Ingredient.new("Matcha Powder")
linguine = Ingredient.new("Linguine")
clam = Ingredient.new("Clams")
water__spinach = Ingredient.new("Water Spinach")
chickpeas = Ingredient.new("Chickpeas")
chicken_stock = Ingredient.new("Chicken Stock")
carrot = Ingredient.new("Carrot")
parsley = Ingredient.new("Parsley")

bohemian_soup.add_ingredients([water__spinach, chickpeas, chicken_stock, carrot])
lasagna.add_ingredients([linguine, clam, parsley])
dal.add_ingredients([carrot, parsley])

eric.declare_allergy(carrot)
eric.declare_allergy(parsley)
megan.declare_allergy(chickpeas)
cihad.declare_allergy(chicken_stock)

ashna.add_recipe_card(bohemian_soup, 9)
janet.add_recipe_card(bohemian_soup, 7)
cihad.add_recipe_card(bohemian_soup, 3)

eric.add_recipe_card(dal, 10)
megan.add_recipe_card(dal, 10)
megan.add_recipe_card(dal, 10)

jason.add_recipe_card(iced_matcha, 10)
nicky.add_recipe_card(iced_matcha, 1)
jack.add_recipe_card(iced_matcha, 2)

ashna.add_recipe_card(dal, 10).date = "2018-07-23"
ashna.add_recipe_card(iced_matcha, 4).date = "2016-07-23"
ashna.add_recipe_card(clam_linguine, 5).date = "2019-01-23"
ashna.add_recipe_card(water_spinach, 10).date = "2019-03-23"
ashna.add_recipe_card(lasagna, 6).date = "2019-05-23"

jack.add_recipe_card(dal, 2)
nicky.add_recipe_card(dal, 1)
jason.add_recipe_card(dal, 10)














binding.pry
