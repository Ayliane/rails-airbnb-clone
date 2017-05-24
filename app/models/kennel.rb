class Kennel < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  has_attachment :photo

  validates :address, presence: true
  validates :description, presence: true
  validates :city, presence: true

  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
