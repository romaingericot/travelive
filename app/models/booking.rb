class Booking < ApplicationRecord
  belongs_to :tour
  belongs_to :user
  has_many :reviews

  validates :progress, presence: true
end
