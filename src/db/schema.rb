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

ActiveRecord::Schema[7.0].define(version: 2022_05_18_201607) do
  create_table "gamblers", force: :cascade do |t|
    t.string "name"
    t.string "Email"
    t.integer "Total_score", default: 0
    t.float "Statistical_data", default : 0
    t.integer "predictions_id"
    t.boolean "Admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest", default: "", null: false
    t.index ["predictions_id"], name: "index_gamblers_on_predictions_id"
  end

  create_table "matches", force: :cascade do |t|
    t.integer "local_id"
    t.integer "visitor_id"
    t.datetime "datetime"
    t.integer "round"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["local_id"], name: "index_matches_on_local_id"
    t.index ["visitor_id"], name: "index_matches_on_visitor_id"
  end

  create_table "points", force: :cascade do |t|
    t.integer "prediction_id"
    t.integer "result_id"
    t.integer "total_points"
    t.float "statistical_data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["prediction_id"], name: "index_points_on_prediction_id"
    t.index ["result_id"], name: "index_points_on_result_id"
  end

  create_table "predictions", force: :cascade do |t|
    t.integer "gambler_id"
    t.integer "match_id"
    t.integer "team1_goals"
    t.integer "team2_goals"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index "\"gambler\", \"match\"", name: "index_predictions_on_gambler_and_match"
    t.index ["gambler_id"], name: "index_predictions_on_gambler_id"
    t.index ["match_id"], name: "index_predictions_on_match_id"
  end

  create_table "results", force: :cascade do |t|
    t.integer "match_id"
    t.integer "prediction_id"
    t.integer "team1_goals"
    t.integer "team2_goals"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["match_id"], name: "index_results_on_match_id"
    t.index ["prediction_id"], name: "index_results_on_prediction_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
