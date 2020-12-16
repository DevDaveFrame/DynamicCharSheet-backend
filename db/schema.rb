# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_15_232044) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ability_scores", force: :cascade do |t|
    t.integer "strength"
    t.integer "dexterity"
    t.integer "constitution"
    t.integer "wisdom"
    t.integer "intelligence"
    t.integer "charisma"
    t.bigint "character_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["character_id"], name: "index_ability_scores_on_character_id"
  end

  create_table "character_equipments", force: :cascade do |t|
    t.bigint "character_id", null: false
    t.bigint "equipment_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["character_id"], name: "index_character_equipments_on_character_id"
    t.index ["equipment_id"], name: "index_character_equipments_on_equipment_id"
  end

  create_table "character_languages", force: :cascade do |t|
    t.bigint "character_id", null: false
    t.bigint "language_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["character_id"], name: "index_character_languages_on_character_id"
    t.index ["language_id"], name: "index_character_languages_on_language_id"
  end

  create_table "characters", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "level", default: 1
    t.string "alignment", default: "neutral"
    t.integer "inspiration", default: 0
    t.integer "experience", default: 0
    t.integer "hp", default: 0
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_characters_on_user_id"
  end

  create_table "descriptions", force: :cascade do |t|
    t.text "allies_and_organizations"
    t.text "backstory"
    t.text "bonds"
    t.text "ideals"
    t.text "flaws"
    t.bigint "character_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["character_id"], name: "index_descriptions_on_character_id"
  end

  create_table "equipment", force: :cascade do |t|
    t.string "type"
    t.string "name"
    t.integer "quantity"
    t.integer "cost"
    t.string "rarity"
    t.boolean "equipable"
    t.boolean "is_equipt"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.string "script"
    t.string "typical_speakers"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "skills", force: :cascade do |t|
    t.boolean "acrobatics"
    t.boolean "animal_handling"
    t.boolean "arcana"
    t.boolean "athletics"
    t.boolean "deception"
    t.boolean "history"
    t.boolean "insight"
    t.boolean "intimidation"
    t.boolean "investigation"
    t.boolean "medicine"
    t.boolean "nature"
    t.boolean "perception"
    t.boolean "performance"
    t.boolean "persuasion"
    t.boolean "religion"
    t.boolean "slight_of_hand"
    t.boolean "stealth"
    t.boolean "survival"
    t.bigint "character_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["character_id"], name: "index_skills_on_character_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "ability_scores", "characters"
  add_foreign_key "character_equipments", "characters"
  add_foreign_key "character_equipments", "equipment"
  add_foreign_key "character_languages", "characters"
  add_foreign_key "character_languages", "languages"
  add_foreign_key "characters", "users"
  add_foreign_key "descriptions", "characters"
  add_foreign_key "skills", "characters"
end
