class ChangeInterestsAndDescriptionTypeFromPartyAnimals < ActiveRecord::Migration[6.0]
  def change
    change_column :party_animals, :main_interest, :text
    change_column :party_animals, :secondary_interest, :text
    change_column :party_animals, :description, :text
  end
end
