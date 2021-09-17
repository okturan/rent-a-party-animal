class PartyAnimalsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show, :edit ]
  before_action :set_party_animal, only: [ :show, :edit, :update ]

  def index
    @partyanimals = PartyAnimal.all
  end

  def new
    @partyanimal = PartyAnimal.new
  end

  def create
    @partyanimal = PartyAnimal.new(list_params)
    @partyanimal.user = current_user
    @partyanimal.save
    redirect_to dashboard_path
  end

  def show; end

  def edit; end

  def update
    @partyanimal.update(list_params)
    redirect_to party_animal_path(@partyanimal)
  end

  private

  def list_params
    params.require(:party_animal).permit(:name, :price, :description, :main_interest, :secondary_interest, :age, :avatar)
  end

  def set_party_animal
    @partyanimal = PartyAnimal.find(params[:id])
  end

end
