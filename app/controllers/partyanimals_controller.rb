class PartyAnimalsController < ApplicationController
  def index
    @partyanimals = PartyAnimal.all
  end

  def new
    @partyanimal = PartyAnimal.new
  end

  def create
    @partyanimal = PartyAnimal.new(list_params)
  end

  def show
    @partyanimal = PartyAnimal.find(params[:id])
  end

private

  def list_params
    params.require(:partyanimal).permit(:name)
  end
end
