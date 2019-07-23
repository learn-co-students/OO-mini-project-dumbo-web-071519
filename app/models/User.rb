class User

    attr_accessor :user_name

    @@all = []

    def initialize(user_name)
        @user_name = user_name
        @@all << self
    end

    def self.all
        @@all
    end

    def user_recipe_cards
        RecipeCard.all.select do |card|
            card.user == self
        end
    end

    def recipes
        self.user_recipe_cards.map do |card|
            card.recipe
        end
    end

    def add_recipe_card(recipe, date, rating)
        RecipeCard.new(date, rating, self, recipe)
    end

    def top_three_recipes
        sorted_recipes = self.user_recipe_cards.sort_by { |card| -card.rating}
        sorted_recipes[0..2]
    end

    def most_recent_recipe
        # sorted_by_date = user_recipe_cards.map{|card| card.date }
        # most_recent_date = sorted_by_date.max{|date1, date2| date1 <=> date2}
        # self.user_recipe_cards.find{ |card| card.date == most_recent_date}

        self.user_recipe_cards.inject do |memo, card|
            if memo.date < card.date
                card
            else
                memo
            end
        end
    end

    def declare_allergy(ingredient)
        Allergy.new(self, ingredient)
    end

    def allergens
        Allergy.all.select do |allergy|
            allergy.user == self
        end
    end




    
end