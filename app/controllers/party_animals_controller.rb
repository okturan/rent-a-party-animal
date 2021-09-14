class PartyAnimalsController < ApplicationController
  def new
    @partyanimal = PartyAnimal.new
  end

  def create
    @partyanimal = PartyAnimal.new(list_params)
    @partyanimal.user = current_user
    @partyanimal.save
    redirect_to party_animals_path
  end

  def show
    @partyanimal = PartyAnimal.find(params[:id])
  end

private

  def list_params
    params.require(:party_animal).permit(:name, :price, :description, :main_interest, :secondary_interest, :age)
  end
end
