class Movie

  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select { |review| review.movie == self }
  end

  def reviewers
    reviewers = reviews.collect { |review| review.viewer }
    reviewers = reviewers.count == 0 ? ["No reviews yet!"] : reviewers
    return reviewers
  end

  def average_rating
    average_rating = reviews.collect { |review| review.rating }.sum
    average_rating = reviews.count > 0 ? Float(average_rating) / reviews.count : ["No ratings available!"]
    return average_rating
  end

end
