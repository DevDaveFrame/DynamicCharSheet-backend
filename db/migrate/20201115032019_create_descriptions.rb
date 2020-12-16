class CreateDescriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :descriptions do |t|
      t.text :allies_and_organizations
      t.text :backstory
      t.text :bonds
      t.text :ideals
      t.text :flaws
      t.belongs_to :character, foreign_key: true

      t.timestamps
    end
  end
end
