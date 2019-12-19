class User
    attr_accessor :name
    
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    # - `User.all`
    # should return all of the user instances
    def self.all 
        @@all
    end

    def recipe_cards
        RecipeCard.all.select do |recipe_card|
            recipe_card.user == self
        end
    end

    # - `User#recipes`
    # should return all of the recipes this user has recipe cards for
    def recipes
        self.recipe_cards.map do |recipe_card|
            recipe_card.recipe
        end
    end

    # - `User#add_recipe_card`
    # should accept a recipe instance as an argument, as well as a date and rating, and create a new recipe card for this user and the given recipe
    def add_recipe_card(recipe, date, rating)
        RecipeCard.new(recipe,date,rating,self)
    end

    # - `User#declare_allergy`
    # should accept an`Ingredient` instance as an argument, and create a new `Allergy` instance for this `User` and the given `Ingredient`
    def declare_allergy(ingredient)
        Allergy.new(self, ingredient)
    end

    def allergy 
        Allergy.all.select do |allergen|
            allergen.user == self
        end
    end
    # - `User#allergens`
    # should return all of the ingredients this user is allergic to
    def allergens
        self.allergy.map do |allergen|
            allergen.ingredient
        end.uniq
    end
    
    # - `User#top_three_recipes`
    # should return the top three highest rated recipes for this user.
    def top_three_recipes
        sorted_recipe_cards = self.recipe_cards.sort do |recipe_card|
            recipe_card.rating end
        if sorted_recipe_cards.length < 3
            sorted_recipe_cards
        else
            sorted_recipe_cards[-3,3]
        end
    end

    # - `User#most_recent_recipe`
    # should return the recipe most recently added to the user's cookbook.
    def most_recent_recipe
        self.recipe_cards.sort do |recipe_card|
            recipe_card.date
        end.first
    end

end