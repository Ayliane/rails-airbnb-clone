class Kennel < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :address, presence: true
  validates :description, presence: true
  validates :city, presence: true
end
