class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.integer :address_number
      t.string :road
      t.string :box
      t.string :city
      t.string :zip_code
      t.string :phone

      t.timestamps
    end
  end
end
