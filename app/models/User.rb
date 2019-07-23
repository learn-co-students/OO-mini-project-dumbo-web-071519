class User

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipe_cards
    RecipeCard.all.select {|card| card.user == self}
  end

  def recipes #works
    self.recipe_cards.map {|card| card.recipe}.uniq
  end

  def add_recipe_card(recipe, rating) #works
    RecipeCard.new(self, recipe, rating)
  end

  def declare_allergy(ingredient) #works
    Allergy.new(self, ingredient)
  end

  def allergens #works
    Allergy.all.select {|allergy| allergy.user == self}.map {|allergy| allergy.ingredient}
  end

  def top_three_recipes #works
    self.recipe_cards.sort_by {|card| card.rating}.reverse[0..2].map {|card| card.recipe}
  end

  def most_recent_recipe #works
    self.recipe_cards.sort_by {|card| card.date}.last.recipe
  end

  def safe_recipes #working
    safe_recipes = Recipe.all.select do |recipe|
      (recipe.ingredients & self.allergens).empty?
    end
  end

end
