class CreateEquipment < ActiveRecord::Migration[6.0]
  def change
    create_table :equipment do |t|
      t.string :type
      t.string :name
      t.integer :quantity
      t.integer :cost
      t.string :rarity
      t.boolean :equipable
      t.boolean :is_equipt

      t.timestamps
    end
  end
end
