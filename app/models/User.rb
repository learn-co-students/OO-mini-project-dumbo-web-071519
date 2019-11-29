class User

    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name 
    end

    def self.all
        @@all
    end

    def recipes
        RecipeCard.all.select{|card| card.user == self}
    end

    def add_recipe_card(recipe, date, rating)
        RecipeCard.new(self, recipe, date, rating)
    end

    def declare_allergy(ingredient)
        Allergy.new(self, ingredient)
    end

    def allergens
        Allergy.all.select{|allergy| allergy.user == self}
    end


    def top_three_recipes
        recipe_list = RecipeCard.all.select{|recipe| recipe.user == self}.sort_by{|card| card.rating}.last(3).reverse
        recipe_list
    end

    def most_recent_recipe
        self.recipes.sort_by{|rc|rc.date}.last
        #RecipeCard.all.map{|card|card}.sort.
    end
        
end