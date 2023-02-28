class Offer < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  CATEGORIES = %w[Singer Actor Politician Sportsman Influencer].freeze

  validates :celebrity_name, presence: true
  validates :price, presence: true, numericality: { only_integer: true }
  validates :category, presence: true, inclusion: { in: CATEGORIES }
  validates :photo, presence: true
end
