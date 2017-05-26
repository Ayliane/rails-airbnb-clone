class Kennel < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  has_attachment :photo

  validates :address, presence: true
  validates :description, presence: true
  validates :city, presence: true

  geocoded_by :full_address
  after_validation :geocode, if: :full_address_changed?

  def full_address
    "#{address}, #{city}"
  end

  private

  def full_address_changed?
    address_changed? || city_changed?
  end
end
