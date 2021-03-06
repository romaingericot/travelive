class Review < ApplicationRecord
  belongs_to :booking

  validates :content, length: { maximum: 200,
    too_long: "%{count} characters is the maximum allowed" }
end
