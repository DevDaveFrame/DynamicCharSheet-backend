class Character < ApplicationRecord
  belongs_to :user
  has_one :ability_score
  has_one :skill
  has_one :description
  has_many :character_languages
  has_many :languages, through: :character_languages
  has_many :character_equipment
  has_many :equipment, through: :character_equipment

  def ability_modifier(ability_name)
    score = self.ability_score[ability_name]
    (score - 10)/2
end

