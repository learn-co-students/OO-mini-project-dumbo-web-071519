class Ingredient
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    all = Allergy.all_allergens
    self.all.max_by {|ingredient| all.count(ingredient)}
  end

end
