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

ActiveRecord::Schema[7.0].define(version: 2022_05_11_022928) do
  create_table "gamblers", force: :cascade do |t|
    t.string "name"
    t.string "lastname"
    t.string "Email"
    t.integer "Total_score"
    t.integer "predictions_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["predictions_id"], name: "index_gamblers_on_predictions_id"
  end

  create_table "matches", force: :cascade do |t|
    t.integer "firstTeam_id"
    t.integer "secoundTeam_id"
    t.string "date"
    t.string "hour"
    t.string "round"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["firstTeam_id"], name: "index_matches_on_firstTeam_id"
    t.index ["secoundTeam_id"], name: "index_matches_on_secoundTeam_id"
  end

  create_table "points", force: :cascade do |t|
    t.integer "total_points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "predictions", force: :cascade do |t|
    t.integer "Match_id"
    t.integer "Team1_goals"
    t.integer "Team2_goals"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Match_id"], name: "index_predictions_on_Match_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "gamblers", "Predictions", column: "predictions_id"
  add_foreign_key "matches", "teams", column: "firstTeam_id"
  add_foreign_key "matches", "teams", column: "secoundTeam_id"
end
