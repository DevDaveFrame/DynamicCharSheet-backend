class CreateStats < ActiveRecord::Migration[6.0]
  def change
    create_table :stats do |t|
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :wisdom
      t.integer :intelligence
      t.integer :charisma

      t.timestamps
    end
  end
end
