class CreatePartyAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :party_animals do |t|
      t.string :name
      t.integer :age
      t.string :main_interest
      t.string :secondary_interest
      t.integer :price
      t.string :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
