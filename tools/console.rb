# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

viewer1 = Viewer.new("that_one_guy")
viewer2 = Viewer.new("btbacker")
viewer3 = Viewer.new("thejoker2020")
viewer4 = Viewer.new("livefromwakanda")

movie1 = Movie.new("The Last Airbender")
movie2 = Movie.new("1917")
movie3 = Movie.new("Joker")
movie4 = Movie.new("Black Panther")

review1 = Review.new(viewer1, movie2, 5)
review2 = Review.new(viewer1, movie3, 4.5)
review3 = Review.new(viewer2, movie2, 4)
review4 = Review.new(viewer4, movie4, 1)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
