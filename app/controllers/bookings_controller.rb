class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    # we need @party_animal in our `simple_form_for`
    @party_animal = PartyAnimal.find(params[:party_animal_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    # we need `party_animal_id` to associate booking with corresponding party_animal
    @party_animal = PartyAnimal.find(params[:party_animal_id])
    @booking.party_animal = @party_animal
    @booking.user = current_user
    @booking.save

    redirect_to bookings_path(@party_animal)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    # redirect_to party_animal_path(@booking.party_animal)
  end

  private

  def booking_params
    params.require(:booking).permit(:city, :party_type, :start_time, :end_time, :date, :total_price)
  end
end
