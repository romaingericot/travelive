class Tour < ApplicationRecord
  belongs_to :user

  has_many_attached :images

  has_many :bookings
  has_many :reviews, through: :bookings

  validates :name, presence: true
  validates :city, presence: true
  validates :country, presence: true
  validates :date, presence: true
  validates :time, presence: true
  validates :duration, presence: true
  validates :description, length: { maximum: 500,
    too_long: "%{count} characters is the maximum allowed" }
  validates :language, presence: true
  validates :category, presence: true
  validates :price, presence: true
end
