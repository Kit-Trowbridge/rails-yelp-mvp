class Restaurant < ApplicationRecord
  # When a restaurant is destroyed, all of its reviews must be destroyed as well.
  has_many :reviews, dependent: :destroy
  # A restaurant must have a name, an address and a category.
  validates :name, :address, :category, presence: true
  # A restaurant’s category must belong to this fixed list: ["chinese", "italian", "japanese", "french", "belgian"].
  validates :category, inclusion:
    {
      # how to make the array case insensitive (without manually typing)
      in: %w[chinese italian japanese french belgian],
      message: 'Category must be chinese, italian, japanese, french, or belgian'
    }
end

# case_sensitive: false <- how to add this to the category validation
