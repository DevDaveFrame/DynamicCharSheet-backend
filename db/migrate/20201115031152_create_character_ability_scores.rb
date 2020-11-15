class CreateCharacterAbilityScores < ActiveRecord::Migration[6.0]
  def change
    create_table :character_ability_scores do |t|
      t.belongs_to :character, null: false, foreign_key: true
      t.belongs_to :ability_score, null: false, foreign_key: true

      t.timestamps
    end
  end
end
