class CreateCharacterStats < ActiveRecord::Migration[6.0]
  def change
    create_table :character_stats do |t|
      t.belongs_to :character, null: false, foreign_key: true
      t.belongs_to :stat, null: false, foreign_key: true

      t.timestamps
    end
  end
end
