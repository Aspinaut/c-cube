class CreateKitchens < ActiveRecord::Migration[5.2]
  def change
    create_table :kitchens do |t|
      t.string :name
      t.belongs_to :address, index: true

      t.timestamps
    end
  end
end
