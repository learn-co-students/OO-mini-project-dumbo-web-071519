class RecipeIngredient
  @@all = []
  attr_reader :recipe, :ingredient

  def initialize(recipe, ingredient)
    @ingredient = ingredient
    @recipe = recipe
    @@all << self
  end

  def self.all
    @@all
  end

end
