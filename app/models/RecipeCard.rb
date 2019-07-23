class RecipeCard
    attr_accessor :recipe, :date, :rating, :user
    
    @@all = []
    def initialize(recipe, date, rating, user)
        @recipe = recipe
        @date = date
        @rating = rating
        @user = user
        @@all << self
    end

    # - `RecipeCard.all`
    # should return all of the RecipeCard instances    
    def self.all 
        @@all
    end
end