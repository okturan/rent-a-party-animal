class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :party_animal
end
