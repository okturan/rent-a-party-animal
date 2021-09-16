class DashboardsController < ApplicationController
  def show
    @partyanimals = current_user.party_animals
    @bookings = current_user.bookings
    @markers = @bookings.geocoded.map do |booking|
      {
        lat: booking.latitude,
        lng: booking.longitude,
        info_window: render_to_string(partial: "info_window", locals: { booking: booking }),
        image_url: helpers.asset_url('party-animal-plain.png')
      }
    end
  end
end
