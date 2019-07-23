class Allergy
  @@all = []
  attr_reader :user, :ingredient 

  def initialize(user, ingredient)
    @ingredient = ingredient
    @user = user
    @@all << self
  end

  def self.all
    @@all
  end

  def self.all_allergens
    self.all.map {|allergy| allergy.ingredient}
  end

end
