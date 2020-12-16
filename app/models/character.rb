class Character < ApplicationRecord
  belongs_to :user
  has_one :ability_score #hash
  has_one :skill #hash
  has_one :description #hash
  has_many :character_languages
  has_many :languages, through: :character_languages
  has_many :character_equipment
  has_many :equipment, through: :character_equipment

  def full_name
    self.first_name + " " + self.lastname
  end
  
  def ability_modifier(ability_score)
    score = self.ability_score[ability_score]
    (score - 10)/2
  end

  def all_ability_modifiers
    modifier_hash = {}
    self.ability_score.each do |name, score|
      modifier_hash[name] = ability_modifier(score)
    end
    return modifier_hash
  end
end
