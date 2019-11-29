class Allergy
    @@all = []

    attr_accessor :user, :ingredient
    def initialize(user, ingredient)
        @user = user
        @ingredient = ingredient
        @@all << self
    end

    def self.all
        @@all
    end

    def self.all_allergens
    self.all.map {|allergy| allergy.ingredient}
    end
end