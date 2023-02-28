class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :offer

  validates :comment, presence: true
  validates :event_date, presence: true
end
