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

ActiveRecord::Schema[7.0].define(version: 2022_05_11_214418) do
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
    t.integer "local_id"
    t.integer "visitor_id"
    t.string "date"
    t.string "hour"
    t.string "round"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["local_id"], name: "index_matches_on_local_id"
    t.index ["visitor_id"], name: "index_matches_on_visitor_id"
  end

  create_table "points", force: :cascade do |t|
    t.integer "total_points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "predictions", force: :cascade do |t|
    t.integer "match_id"
    t.integer "team1_goals"
    t.integer "team2_goals"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["match_id"], name: "index_predictions_on_match_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "gamblers", "Predictions", column: "predictions_id"
end
