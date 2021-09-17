class BookingsController < ApplicationController
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
    @booking.total_price = total_price
    if @booking.end_time < @booking.start_time
    else
      @booking.save
    end

    redirect_to dashboard_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to dashboard_path
  end

  private

  def total_price
    ((@booking.end_time - @booking.start_time) / 3600) * @party_animal.price
  end

  def booking_params
    params.require(:booking).permit(:address, :party_type, :start_time, :end_time, :date, :total_price)
  end
end
