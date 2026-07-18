#!/usr/bin/env ruby

def assert(condition, message)
  raise message unless condition
end

root = File.expand_path('..', __dir__)
party_animal = File.read(File.join(root, 'app/models/party_animal.rb'))
party_animals_controller = File.read(File.join(root, 'app/controllers/party_animals_controller.rb'))
bookings_controller = File.read(File.join(root, 'app/controllers/bookings_controller.rb'))
readme = File.read(File.join(root, 'README.md'))

assert(party_animal.match?(/^\s*belongs_to :user\s*$/), 'PartyAnimal must belong to its owner without destroying the owner')
assert(!party_animal.include?('belongs_to :user, dependent: :destroy'), 'PartyAnimal destruction must never cascade to User')
assert(party_animal.include?('has_many :bookings, dependent: :destroy'), 'PartyAnimal must clean up its dependent bookings')

assert(
  party_animals_controller.include?('skip_before_action :authenticate_user!, only: [ :index, :show ]'),
  'Only listing index and show may be public',
)
assert(
  party_animals_controller.include?('before_action :set_owned_party_animal, only: [ :edit, :update ]'),
  'Listing edits and updates must use the owner-scoped lookup',
)
assert(
  party_animals_controller.include?('@partyanimal = current_user.party_animals.find(params[:id])'),
  'Listing mutation lookup must be scoped through current_user',
)
assert(
  bookings_controller.include?('@booking = current_user.bookings.find(params[:id])'),
  'Booking deletion lookup must be scoped through current_user',
)

assert(readme.include?('must not be exposed or deployed'), 'README must retain the legacy dependency warning')
assert(readme.include?('collaborative Rails bootcamp project'), 'README must retain the collaboration boundary')

puts 'Archive security contract passed'
