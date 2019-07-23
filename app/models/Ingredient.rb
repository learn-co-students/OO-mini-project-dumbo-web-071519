class Ingredient
    @@all =[]

    attr_accessor :name 
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_common_allergen
        allergen_count = Allergy.all.map{|allergen|allergen.ingredient}
        allergen_count.max_by{|i| allergen_count.count(i)}
        
        # Allergy.all.ingredient.each do  |ing|
        #     counts[ing] += 1
        # end
        # counts
    end
end