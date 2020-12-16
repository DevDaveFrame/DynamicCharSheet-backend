class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :first_name
      t.string :last_name
      t.integer :level, default: 1
      t.string :alignment, default: "neutral"
      t.integer :inspiration, default: 0
      t.integer :experience, default: 0
      t.integer :hp, default: 0
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
