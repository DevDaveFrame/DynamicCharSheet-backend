class CreateAbilityScores < ActiveRecord::Migration[6.0]
  def change
    create_table :ability_scores do |t|
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :wisdom
      t.integer :intelligence
      t.integer :charisma
      t.belongs_to :character, foreign_key: true

      t.timestamps
    end
  end
end
