class Review < ApplicationRecord
  belongs_to :offer

  validates :comment, length: { maximum: 140 }
  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
end
