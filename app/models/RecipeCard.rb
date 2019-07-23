class RecipeCard

  attr_reader :rating, :user, :recipe
  attr_accessor :date
  
  @@all = []

  def initialize(user, recipe, rating)
    @user = user
    @recipe = recipe
    @rating = rating
    @date = Time.new.strftime("%Y-%m-%d")
    @@all << self
  end

  def self.all
    @@all
  end

end
