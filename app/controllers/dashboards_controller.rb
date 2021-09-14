class DashboardsController < ApplicationController
  def show
  @partyanimals = current_user.party_animals
  @bookings = current_user.bookings
  end
end
