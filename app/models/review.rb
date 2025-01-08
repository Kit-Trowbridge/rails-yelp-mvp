class Review < ApplicationRecord
  # A review must belong to a restaurant.
  belongs_to :restaurant
  # A review must have a content.
  validates :content, presence: true
  # A review must have a rating.
  # A review’s rating must be an integer. For example, a review with a rating of 2.5 should be invalid!
  # A review’s rating must be a number between 0 and 5.
  validates :rating, presence: true, numericality: { only_integer: true }, inclusion: { in: (0..5) }
end

# when testing in the console, have to manually assign the review
# to a restaurant to make it valid

# ex:
# > yummy = Review.new(content: "yummy yummy", rating: 4)
# > yummy.restaurant = bristol  # Set foreign key restaurant_id
