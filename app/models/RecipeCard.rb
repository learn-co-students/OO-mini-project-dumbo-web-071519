class RecipeCard
    @@all = []
    attr_accessor :user, :date, :recipe
    attr_reader :rating

    def initialize(user, recipe, rating, date)
        @user = user
        @recipe = recipe
        @date = date
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end

    def date
        @date
    end

    def rating
        @rating
    end



end