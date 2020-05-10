class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :payment
      t.boolean :delivered
      t.text :note
      t.belongs_to :user, index: true
      t.belongs_to :kitchen, index: true
      t.belongs_to :menu, index: true
      
      t.timestamps
    end
  end
end
