class CreateDietAndAllergies < ActiveRecord::Migration[5.2]
  def change
    create_table :diet_and_allergies do |t|
      t.string :diet
      t.boolean :allergy_arachids
      t.boolean :allergy_eggs
      t.boolean :allergy_gluten
      t.timestamps
    end
  end
end
