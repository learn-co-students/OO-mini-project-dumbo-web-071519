class Recipe

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
        
    end

    def self.all
        @@all
    end

    def all_recipe_cards
        RecipeCard.all.select do |card|
            card.recipe == self
        end
    end

    def users
        self.all_recipe_cards.map do |card|
            card.user 
        end
    end

    def ingredients
        RecipeIngredient.all.select do |r_ingredient|
            r_ingredient.recipe == self
        end.map do |r_ingredient|
            r_ingredient.ingredient 
        end
    end

    def allergens
        allergic_ingredients = Allergy.all.map{ |allergy| allergy.ingredient}
        self.ingredients.select do |ingredient|
            allergic_ingredients.include?(ingredient)
        end
    end


    def add_ingredients(ingredient_array) ##[flour, sugar]
        ingredient_array.map do |ingredient|
            RecipeIngredient.new(self, ingredient)        
        end
        
    end


end