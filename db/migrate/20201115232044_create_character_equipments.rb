class CreateCharacterEquipments < ActiveRecord::Migration[6.0]
  def change
    create_table :character_equipments do |t|
      t.belongs_to :character, null: false, foreign_key: true
      t.belongs_to :equipment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
