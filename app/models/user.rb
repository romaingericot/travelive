class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :photo

  has_many :tours
  has_many :bookings
  has_one_attached :photo

  validates :email, uniqueness: true
  validates :password, length: { in: 6..20 }
  GENDER = ["Homme", "Femme"]
  # validates :gender, inclusion: { in: GENDER }
  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :description, length: { maximum: 300,
  #   too_long: "%{count} characters is the maximum allowed" }
end
