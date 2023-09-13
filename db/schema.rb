# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_09_12_232733) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "career_traits", force: :cascade do |t|
    t.bigint "career_id", null: false
    t.bigint "personality_trait_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["career_id"], name: "index_career_traits_on_career_id"
    t.index ["personality_trait_id"], name: "index_career_traits_on_personality_trait_id"
  end

  create_table "careers", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "skills_required"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "personality_traits", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.string "about_me"
    t.bigint "user_id", null: false
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "questions", force: :cascade do |t|
    t.text "text"
    t.bigint "personality_trait_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["personality_trait_id"], name: "index_questions_on_personality_trait_id"
  end

  create_table "responses", force: :cascade do |t|
    t.string "response"
    t.bigint "question_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_responses_on_question_id"
    t.index ["user_id"], name: "index_responses_on_user_id"
  end

  create_table "trait_scores", force: :cascade do |t|
    t.string "score"
    t.bigint "user_id", null: false
    t.bigint "personality_trait_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["personality_trait_id"], name: "index_trait_scores_on_personality_trait_id"
    t.index ["user_id"], name: "index_trait_scores_on_user_id"
  end

  create_table "trait_weights", force: :cascade do |t|
    t.bigint "career_id", null: false
    t.string "Trait1_weight"
    t.string "Trait2_weight"
    t.string "Trait3_weight"
    t.string "Trait4_weight"
    t.string "Trait5_weight"
    t.string "Trait6_weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["career_id"], name: "index_trait_weights_on_career_id"
  end

  create_table "user_careers", force: :cascade do |t|
    t.string "score"
    t.bigint "career_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["career_id"], name: "index_user_careers_on_career_id"
    t.index ["user_id"], name: "index_user_careers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "career_traits", "careers"
  add_foreign_key "career_traits", "personality_traits"
  add_foreign_key "profiles", "users"
  add_foreign_key "questions", "personality_traits"
  add_foreign_key "responses", "questions"
  add_foreign_key "responses", "users"
  add_foreign_key "trait_scores", "personality_traits"
  add_foreign_key "trait_scores", "users"
  add_foreign_key "trait_weights", "careers"
  add_foreign_key "user_careers", "careers"
  add_foreign_key "user_careers", "users"
end
