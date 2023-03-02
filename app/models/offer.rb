class Offer < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_one_attached :photo

  CATEGORIES = %w[Musique Cinema Politique Sport].freeze

  validates :celebrity_name, presence: true
  validates :price, presence: true, numericality: { only_integer: true }
  validates :category, presence: true, inclusion: { in: CATEGORIES }
  validates :photo, presence: true

  # include PgSearch::Model
  # pg_search_scope :search_by_category_and_name,
  #   against: [:category, :celebrity_name],
  #   using: {
  #     tsearch: { prefix: true }
  # }

  include PgSearch::Model
  pg_search_scope :global_search,
  against: [ :category, :celebrity_name ],
  associated_against: {
    user: [ :address ]
  },
  using: {
    tsearch: { prefix: true }
  }
end
