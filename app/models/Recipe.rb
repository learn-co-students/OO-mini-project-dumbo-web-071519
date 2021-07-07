class Recipe

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def users #works
    RecipeCard.all.select {|card| card.recipe == self}.map {|card| card.user}.uniq
  end

  def ingredients #works
    RecipeIngredient.all.select {|instance| instance.recipe == self}.map {|instance| instance.ingredient}
  end

  def add_ingredient(ingredient) #works
    RecipeIngredient.new(self, ingredient)
  end

  def add_ingredients(array) #works
    array.map {|ingredient| self.add_ingredient(ingredient)}
  end

  def allergens #works
    allergens = Allergy.all_allergens
    self.ingredients.select {|ingredient| allergens.include?(ingredient)}
  end

  def self.most_popular
    #should give dal
    #should check official solution out
    #create a hash with recipe names as keys and counts as values?
    counts = Hash.new(0)
    self.all.each do |recipe|
      RecipeCard.all.each do |card|
        if card.recipe == recipe
          counts[recipe] += 1
        end
      end
    end
    counts.sort_by {|recipe, count| count}.to_h
  end

end
