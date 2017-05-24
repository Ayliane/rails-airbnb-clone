class Kennel < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :address, presence: true
  validates :description, presence: true
  validates :city, presence: true

  has_attachment :photo
end
