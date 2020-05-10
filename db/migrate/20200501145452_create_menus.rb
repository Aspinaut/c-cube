class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.belongs_to :diet_and_allergy, index: true
      t.string :menu_description
      t.datetime :menu_date
      t.boolean :noon
      t.boolean :evening
      t.integer :quantity
      t.float :cost
      t.timestamps
    end
  end
end
