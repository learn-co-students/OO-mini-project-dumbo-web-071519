class Recipe 
    attr_accessor :name
    
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def recipe_cards
        RecipeCard.all.select do |recipe_card|
            recipe_card.recipe == self
        end 
    end

     # - `Recipe#users`
    # should return the user instances who have recipe cards with this recipe
    def users
        self.recipe_cards.map do |recipe_card|
            recipe_card.user
        end
    end
    
    def recipe_ingredients
        RecipeIngredient.all.select do |recipeingredient|
            recipeingredient.recipe == self
        end
        #returns an array of RecipeIngredient objects where the recipe is present
    end

    # - `Recipe#ingredients`
    # should return all of the ingredients in this recipe
    def ingredients
        self.recipe_ingredients.map do |recipeingredient|
            recipeingredient.ingredient
        end
        #returns an array of ingredients in the recipe_ingredients array
    end

    def known_allergies
        Allergy.all.map do |allergen|
            allergen.ingredient
        end.uniq
    end

    # - `Recipe#allergens`
    # should return all of the `Ingredient`s in this recipe that are allergens for `User`s in our system.
    def allergens
        self.ingredients.select do |ingredient|
            self.known_allergies.include?(ingredient)
        end
    end

    # - `Recipe#add_ingredients`
    # should take an array of instances as an argument, and associate each of those ingredients with this recipe
    def add_ingredients(ingredients)
        ingredients.each do |ingredient|
            RecipeIngredient.new(self,ingredient)
        end
    end

    # - `Recipe.all`
    # should return all of the recipe instances    
    def self.all 
        @@all
    end


    # - `Recipe.most_popular`
    # should return the recipe instance with the highest number of users (the recipe that has the most recipe cards)
   def self.most_popular

   end
end