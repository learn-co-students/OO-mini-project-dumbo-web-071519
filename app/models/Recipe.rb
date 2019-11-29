class Recipe

    @@all = []

    attr_accessor :name, :ingredient

    def initialize(name, ingredient)
        @name = name
        @ingredient = ingredient
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_popular
        recipe_strings= RecipeCard.all.map{|rc| rc.recipe}
        recipe_strings.max_by{|i| recipe_strings.count(i)}
    end

    def users
        recipe_arr = RecipeCard.all.select{|rc| rc.recipe == self}
        recipe_arr.map{|x|x.user}.uniq
    end

    def allergens  #i get this but it's not mine
    allergens = Allergy.all_allergens
    self.ingredients.select {|ingredient| allergens.include?(ingredient)}
    end

    def add_ingredient(ingredient)
        RecipeIngredient.new(ingredient, self)
    end

    def add_ingredients(array)
        array.map{|ingredient|self.add_ingredient(ingredient)}
    end



end