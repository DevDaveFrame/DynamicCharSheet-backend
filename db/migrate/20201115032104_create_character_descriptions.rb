class CreateCharacterDescriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :character_descriptions do |t|
      t.belongs_to :character, null: false, foreign_key: true
      t.belongs_to :description, null: false, foreign_key: true

      t.timestamps
    end
  end
end
