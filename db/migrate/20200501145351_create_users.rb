class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.boolean :has_container
      t.string :password_digest
      t.string :remember_digest
      t.belongs_to :address, index: true
      t.belongs_to :diet_and_allergy, index: true

      t.timestamps
    end
  end
end
