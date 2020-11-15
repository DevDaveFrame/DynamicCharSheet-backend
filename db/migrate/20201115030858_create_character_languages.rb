class CreateCharacterLanguages < ActiveRecord::Migration[6.0]
  def change
    create_table :character_languages do |t|
      t.belongs_to :character, null: false, foreign_key: true
      t.belongs_to :language, null: false, foreign_key: true

      t.timestamps
    end
  end
end
