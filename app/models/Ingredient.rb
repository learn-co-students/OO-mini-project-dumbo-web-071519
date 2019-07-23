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


    def self.allergies_per_ingredient_count
        #return hash    
        #sort_by{|key,value| value}.last[1]
    end
    
    # - `Ingredient.most_common_allergen`
    # should return the ingredient instance that the highest number of users are allergic to
    def self.most_common_allergen
        #sorth hash or just get the last item in the hash
    end

end
