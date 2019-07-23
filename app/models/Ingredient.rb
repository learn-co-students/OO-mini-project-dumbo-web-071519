class Ingredient

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
        
    end

    def self.all
        @@all
    end

    def self.most_common_allergen
        allergic_ingredients = Allergy.all.map{|allergy| allergy.ingredient}
        allergic_ingredients.inject do |memo, ingredient|
            if allergic_ingredients.count(memo) < allergic_ingredients.count(ingredient)
                ingredient
            else  
                memo
            end  
        end
    end

    
end
