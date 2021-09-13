class PartyanimalsController < ApplicationController
  def index
    @partyanimals = Partyanimal.all
  end

  def new
    @partyanimal = Partyanimal.new
  end

  def create
    @partyanimal = Partyanimal.new(list_params)
  end

  def show
    @partyanimal = Partyanimal.find(params[:id])
  end

private

  def list_params
    params.require(:partyanimal).permit(:name)
  end
end
