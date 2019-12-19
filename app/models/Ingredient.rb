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

    def list_of_allergy_objects_with_me
        Allergy.all.select do |allergen|
            allergen.ingredient == self
        end
    end

    def list_of_users_allergic_to_me
        self.list_of_allergy_objects_with_me.map do |allergen|
            allergen.user
        end
    end


    def self.allergies_per_ingredient_count
        #return hash   
        allergic_count = {}
        Ingredient.all.each do |ingredient|
           allergic_count[ingredient] = ingredient.list_of_users_allergic_to_me.count
        end
        allergic_count.sort_by{|key,value| value}
    end
    
    # max_by
    # - `Ingredient.most_common_allergen`
    # should return the ingredient instance that the highest number of users are allergic to
    def self.most_common_allergen
        #sorth hash or just get the last item in the hash
        self.allergies_per_ingredient_count.last[0]
    end

end
