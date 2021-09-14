class PartyAnimal < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :bookings
  validates :name, presence: true
  validates :price, presence: true, numericality: { only_integer: true }
end
