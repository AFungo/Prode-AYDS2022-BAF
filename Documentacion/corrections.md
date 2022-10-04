# RuboCop Inspection Report

25 files inspected, 1789 offenses detected:

### Gemfile - (12 offenses)
  * **Line # 1 - convention:** Style/FrozenStringLiteralComment: Missing frozen string literal comment.

    ```rb
    ruby '2.7.5'
    ```

  * **Line # 3 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
    source "https://rubygems.org"
    ```

  * **Line # 13 - convention:** Bundler/OrderedGems: Gems should be sorted in an alphabetical order within their section of the Gemfile. Gem `bcrypt` should appear before `rake`.

    ```rb
    gem 'bcrypt'
    ```

  * **Line # 13 - convention:** Bundler/OrderedGems: Gems should be sorted in an alphabetical order within their section of the Gemfile. Gem `rake` should appear before `sinatra-activerecord`.

    ```rb
    gem 'rake'
    ```

  * **Line # 14 - convention:** Bundler/OrderedGems: Gems should be sorted in an alphabetical order within their section of the Gemfile. Gem `bcrypt` should appear before `sinatra-activerecord`.

    ```rb
    gem 'bcrypt'
    ```

  * **Line # 14 - convention:** Bundler/OrderedGems: Gems should be sorted in an alphabetical order within their section of the Gemfile. Gem `rake` should appear before `sqlite3`.

    ```rb
    gem 'rake'
    ```

  * **Line # 15 - convention:** Bundler/OrderedGems: Gems should be sorted in an alphabetical order within their section of the Gemfile. Gem `bcrypt` should appear before `rake`.

    ```rb
    gem 'bcrypt'
    ```

  * **Line # 15 - convention:** Bundler/OrderedGems: Gems should be sorted in an alphabetical order within their section of the Gemfile. Gem `bcrypt` should appear before `sqlite3`.

    ```rb
    gem 'bcrypt'
    ```

  * **Line # 15 - convention:** Bundler/OrderedGems: Gems should be sorted in an alphabetical order within their section of the Gemfile. Gem `rubocop` should appear before `sinatra-activerecord`.

    ```rb
    gem 'rubocop'
    ```

  * **Line # 16 - convention:** Bundler/OrderedGems: Gems should be sorted in an alphabetical order within their section of the Gemfile. Gem `rubocop` should appear before `sqlite3`.

    ```rb
    gem 'rubocop'
    ```

  * **Line # 17 - convention:** Bundler/OrderedGems: Gems should be sorted in an alphabetical order within their section of the Gemfile. Gem `rubocop` should appear before `sinatra-flash`.

    ```rb
    gem 'rubocop'
    ```

  * **Line # 17 - convention:** Bundler/OrderedGems: Gems should be sorted in an alphabetical order within their section of the Gemfile. Gem `sinatra-flash` should appear before `sqlite3`.

    ```rb
    gem 'sinatra-flash'
    ```

### Rakefile.rb - (5 offenses)
  * **Line # 1 - convention:** Naming/FileName: The name of this source file (`Rakefile.rb`) should use snake_case.

    ```rb
    require 'sinatra/activerecord/rake'
    ```

  * **Line # 1 - convention:** Style/FrozenStringLiteralComment: Missing frozen string literal comment.

    ```rb
    require 'sinatra/activerecord/rake'
    ```

  * **Line # 1 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
    require "sinatra/activerecord/rake"
    ```

  * **Line # 5 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        require "./server"
    ```

  * **Line # 7 - convention:** Layout/TrailingEmptyLines: Final newline missing.

    ```rb
    end
    ```

### config.ru - (2 offenses)
  * **Line # 1 - convention:** Style/FrozenStringLiteralComment: Missing frozen string literal comment.

    ```rb
    require './server'
    ```

  * **Line # 2 - convention:** Layout/TrailingEmptyLines: Final newline missing.

    ```rb
    run App
    ```

### config/environment.rb - (2 offenses)
  * **Line # 1 - convention:** Style/FrozenStringLiteralComment: Missing frozen string literal comment.

    ```rb
    db_options = YAML.load(File.read('./config/database.yml'))
    ```

  * **Line # 1 - convention:** Security/YAMLLoad: Prefer using `YAML.safe_load` over `YAML.load`.

    ```rb
    db_options = YAML.load(File.read('./config/database.yml'))
    ```

### db/migrate/20220505134412_create_prediction.rb - (3 offenses)
  * **Line # 1 - convention:** Style/Documentation: Missing top-level documentation comment for `class CreatePrediction`.

    ```rb
    class CreatePrediction < ActiveRecord::Migration[7.0]
    ```

  * **Line # 1 - convention:** Style/FrozenStringLiteralComment: Missing frozen string literal comment.

    ```rb
    class CreatePrediction < ActiveRecord::Migration[7.0]
    ```

  * **Line # 11 - convention:** Style/SymbolArray: Use `%i` or `%I` for an array of symbols.

    ```rb
        add_index :predictions, [:gambler, :match]
    ```

### db/migrate/20220505134501_create_matches.rb - (5 offenses)
  * **Line # 1 - convention:** Style/FrozenStringLiteralComment: Missing frozen string literal comment.

    ```rb
    require 'date'
    ```

  * **Line # 2 - convention:** Style/Documentation: Missing top-level documentation comment for `class CreateMatches`.

    ```rb
    class CreateMatches < ActiveRecord::Migration[7.0]
    ```

  * **Line # 3 - convention:** Layout/EmptyLinesAroundClassBody: Extra empty line detected at class body beginning.

    ```rb
     ...
    ```

  * **Line # 4 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

    ```rb
      def change 
    ```

  * **Line # 13 - convention:** Layout/EmptyLinesAroundClassBody: Extra empty line detected at class body end.

    ```rb
     ...
    ```

### db/migrate/20220511022928_create_gamblers.rb - (10 offenses)
  * **Line # 1 - convention:** Style/Documentation: Missing top-level documentation comment for `class CreateGamblers`.

    ```rb
    class CreateGamblers < ActiveRecord::Migration[7.0]
    ```

  * **Line # 1 - convention:** Style/FrozenStringLiteralComment: Missing frozen string literal comment.

    ```rb
    class CreateGamblers < ActiveRecord::Migration[7.0]
    ```

  * **Line # 4 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
            t.string :name
    ```

  * **Line # 5 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
            t.string :Email
    ```

  * **Line # 6 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
            t.integer :Total_score, default: 0
    ```

  * **Line # 7 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
            t.float :Statistical_data, default: 0
    ```

  * **Line # 8 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
            t.references :predictions
    ```

  * **Line # 9 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
            t.boolean :Admin, default: false
    ```

  * **Line # 10 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

  * **Line # 11 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
            t.timestamps
    ```

### db/migrate/20220511190955_create_teams.rb - (4 offenses)
  * **Line # 1 - convention:** Style/Documentation: Missing top-level documentation comment for `class CreateTeams`.

    ```rb
    class CreateTeams < ActiveRecord::Migration[7.0]
    ```

  * **Line # 1 - convention:** Style/FrozenStringLiteralComment: Missing frozen string literal comment.

    ```rb
    class CreateTeams < ActiveRecord::Migration[7.0]
    ```

  * **Line # 5 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

  * **Line # 7 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

    ```rb
        end    
    ```

### db/migrate/20220516173130_create_results.rb - (5 offenses)
  * **Line # 1 - convention:** Style/Documentation: Missing top-level documentation comment for `class CreateResults`.

    ```rb
    class CreateResults < ActiveRecord::Migration[7.0]
    ```

  * **Line # 1 - convention:** Style/FrozenStringLiteralComment: Missing frozen string literal comment.

    ```rb
    class CreateResults < ActiveRecord::Migration[7.0]
    ```

  * **Line # 5 - convention:** Layout/ExtraSpacing: Unnecessary spacing detected.

    ```rb
          t.references  :prediction
    ```

  * **Line # 5 - convention:** Layout/SpaceBeforeFirstArg: Put one space between the method name and the first argument.

    ```rb
          t.references  :prediction
    ```

  * **Line # 14 - convention:** Layout/TrailingEmptyLines: 1 trailing blank lines detected.

    ```rb
     ...
    ```

### db/migrate/20220518201607_add_password_digest_to_users.rb - (3 offenses)
  * **Line # 1 - convention:** Style/Documentation: Missing top-level documentation comment for `class AddPasswordDigestToUsers`.

    ```rb
    class AddPasswordDigestToUsers < ActiveRecord::Migration[7.0]
    ```

  * **Line # 1 - convention:** Style/FrozenStringLiteralComment: Missing frozen string literal comment.

    ```rb
    class AddPasswordDigestToUsers < ActiveRecord::Migration[7.0]
    ```

  * **Line # 2 - convention:** Layout/LeadingEmptyLines: Unnecessary blank line at the beginning of the source.

    ```rb
    class AddPasswordDigestToUsers < ActiveRecord::Migration[7.0]
    ```

### db/schema.rb - (56 offenses)
  * **Line # 1 - convention:** Style/FrozenStringLiteralComment: Missing frozen string literal comment.

    ```rb
    # This file is auto-generated from the current state of the database. Instead
    ```

  * **Line # 13 - convention:** Metrics/BlockLength: Block has too many lines. [48/25]

    ```rb
    ActiveRecord::Schema[7.0].define(version: 20_220_518_201_607) do ...
    ```

  * **Line # 13 - convention:** Style/NumericLiterals: Use underscores(_) as thousands separator and separate every 3 digits with them.

    ```rb
    ActiveRecord::Schema[7.0].define(version: 2022_05_18_201607) do
    ```

  * **Line # 14 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
      create_table "gamblers", force: :cascade do |t|
    ```

  * **Line # 15 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t.string "name"
    ```

  * **Line # 16 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t.string "Email"
    ```

  * **Line # 17 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t.integer "Total_score", default: 0
    ```

  * **Line # 18 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t.float "Statistical_data", default: 0.0
    ```

  * **Line # 19 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t.integer "predictions_id"
    ```

  * **Line # 20 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t.boolean "Admin", default: false
    ```

  * **Line # 21 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t.datetime "created_at", null: false
    ```

  * **Line # 22 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t.datetime "updated_at", null: false
    ```

  * **Line # 23 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t.string "password_digest", default: "", null: false
    ```

  * **Line # 23 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t.string "password_digest", default: "", null: false
    ```

  * **Line # 24 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t.index ["predictions_id"], name: "index_gamblers_on_predictions_id"
    ```

  * **Line # 24 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t.index ["predictions_id"], name: "index_gamblers_on_predictions_id"
    ```

  * **Line # 27 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
      create_table "matches", force: :cascade do |t|
    ```

  * **Line # 28 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t.integer "local_id"
    ```

  * **Line # 29 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t.integer "visitor_id"
    ```

  * **Line # 30 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t.datetime "datetime"
    ```

  * **Line # 31 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t.integer "round"
    ```

  * **Line # 32 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t.datetime "created_at", null: false
    ```

  * **Line # 33 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t.datetime "updated_at", null: false
    ```

  * **Line # 34 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t.index ["local_id"], name: "index_matches_on_local_id"
    ```

  * **Line # 34 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t.index ["local_id"], name: "index_matches_on_local_id"
    ```

  * **Line # 35 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t.index ["visitor_id"], name: "index_matches_on_visitor_id"
    ```

  * **Line # 35 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t.index ["visitor_id"], name: "index_matches_on_visitor_id"
    ```

  * **Line # 38 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
      create_table "predictions", force: :cascade do |t|
    ```

  * **Line # 39 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t.integer "gambler_id"
    ```

  * **Line # 40 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t.integer "match_id"
    ```

  * **Line # 41 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t.integer "team1_goals"
    ```

  * **Line # 42 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t.integer "team2_goals"
    ```

  * **Line # 43 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t.datetime "created_at", null: false
    ```

  * **Line # 44 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t.datetime "updated_at", null: false
    ```

  * **Line # 45 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t.index "\"gambler\", \"match\"", name: "index_predictions_on_gambler_and_match"
    ```

  * **Line # 45 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t.index "\"gambler\", \"match\"", name: "index_predictions_on_gambler_and_match"
    ```

  * **Line # 46 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t.index ["gambler_id"], name: "index_predictions_on_gambler_id"
    ```

  * **Line # 46 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t.index ["gambler_id"], name: "index_predictions_on_gambler_id"
    ```

  * **Line # 47 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t.index ["match_id"], name: "index_predictions_on_match_id"
    ```

  * **Line # 47 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t.index ["match_id"], name: "index_predictions_on_match_id"
    ```

  * **Line # 50 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
      create_table "results", force: :cascade do |t|
    ```

  * **Line # 51 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t.integer "match_id"
    ```

  * **Line # 52 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t.integer "prediction_id"
    ```

  * **Line # 53 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t.integer "team1_goals"
    ```

  * **Line # 54 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t.integer "team2_goals"
    ```

  * **Line # 55 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t.datetime "created_at", null: false
    ```

  * **Line # 56 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t.datetime "updated_at", null: false
    ```

  * **Line # 57 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t.index ["match_id"], name: "index_results_on_match_id"
    ```

  * **Line # 57 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t.index ["match_id"], name: "index_results_on_match_id"
    ```

  * **Line # 58 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t.index ["prediction_id"], name: "index_results_on_prediction_id"
    ```

  * **Line # 58 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t.index ["prediction_id"], name: "index_results_on_prediction_id"
    ```

  * **Line # 61 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
      create_table "teams", force: :cascade do |t|
    ```

  * **Line # 62 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t.string "name"
    ```

  * **Line # 63 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t.datetime "created_at", null: false
    ```

  * **Line # 64 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t.datetime "updated_at", null: false
    ```

  * **Line # 66 - convention:** Layout/EmptyLinesAroundBlockBody: Extra empty line detected at block body end.

    ```rb
     ...
    ```

### db/seeds.rb - (777 offenses)
  * **Line # 1 - convention:** Style/FrozenStringLiteralComment: Missing frozen string literal comment.

    ```rb
    Team.destroy_all
    ```

  * **Line # 3 - convention:** Layout/EmptyLines: Extra blank line detected.

    ```rb
     ...
    ```

  * **Line # 4 - convention:** Layout/LeadingCommentSpace: Missing space after `#`.

    ```rb
    ##Teams
    ```

  * **Line # 5 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
    Team.create!([{name: 'Qatar'},
    ```

  * **Line # 5 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
    Team.create!([{name: 'Qatar'},
    ```

  * **Line # 6 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {name: 'Ecuador'},
    ```

  * **Line # 6 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {name: 'Ecuador'},
    ```

  * **Line # 6 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
        {name: 'Ecuador'},
    ```

  * **Line # 7 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {name: 'Senegal'},
    ```

  * **Line # 7 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {name: 'Senegal'},
    ```

  * **Line # 7 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
        {name: 'Senegal'},
    ```

  * **Line # 8 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {name: 'Netherlands '},
    ```

  * **Line # 8 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {name: 'Netherlands '},
    ```

  * **Line # 8 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
        {name: 'Netherlands '},
    ```

  * **Line # 9 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {name: 'England'},
    ```

  * **Line # 9 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {name: 'England'},
    ```

  * **Line # 9 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
        {name: 'England'},
    ```

  * **Line # 10 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {name: 'Iran'},
    ```

  * **Line # 10 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {name: 'Iran'},
    ```

  * **Line # 10 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
        {name: 'Iran'},
    ```

  * **Line # 11 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {name: 'USA'},
    ```

  * **Line # 11 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {name: 'USA'},
    ```

  * **Line # 11 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
        {name: 'USA'},
    ```

  * **Line # 12 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {name: 'Wales '},
    ```

  * **Line # 12 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {name: 'Wales '},
    ```

  * **Line # 12 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
        {name: 'Wales '},
    ```

  * **Line # 13 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {name: 'Argentina'},
    ```

  * **Line # 13 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {name: 'Argentina'},
    ```

  * **Line # 13 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
        {name: 'Argentina'},
    ```

  * **Line # 14 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {name: 'Saudi Arabia'},
    ```

  * **Line # 14 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {name: 'Saudi Arabia'},
    ```

  * **Line # 14 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
        {name: 'Saudi Arabia'},
    ```

  * **Line # 15 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {name: 'Mexico'},
    ```

  * **Line # 15 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {name: 'Mexico'},
    ```

  * **Line # 15 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
        {name: 'Mexico'},
    ```

  * **Line # 16 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {name: 'Poland '},
    ```

  * **Line # 16 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {name: 'Poland '},
    ```

  * **Line # 16 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
        {name: 'Poland '},
    ```

  * **Line # 17 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {name: 'France'},
    ```

  * **Line # 17 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {name: 'France'},
    ```

  * **Line # 17 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
        {name: 'France'},
    ```

  * **Line # 18 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {name: 'Australia'},
    ```

  * **Line # 18 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {name: 'Australia'},
    ```

  * **Line # 18 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
        {name: 'Australia'},
    ```

  * **Line # 19 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {name: 'Denmark'},
    ```

  * **Line # 19 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {name: 'Denmark'},
    ```

  * **Line # 19 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
        {name: 'Denmark'},
    ```

  * **Line # 20 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {name: 'Tunisia '},
    ```

  * **Line # 20 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {name: 'Tunisia '},
    ```

  * **Line # 20 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
        {name: 'Tunisia '},
    ```

  * **Line # 21 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {name: 'Spain'},
    ```

  * **Line # 21 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {name: 'Spain'},
    ```

  * **Line # 21 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
        {name: 'Spain'},
    ```

  * **Line # 22 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {name: 'Costa Rica'},
    ```

  * **Line # 22 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {name: 'Costa Rica'},
    ```

  * **Line # 22 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
        {name: 'Costa Rica'},
    ```

  * **Line # 23 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {name: 'Germany'},
    ```

  * **Line # 23 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {name: 'Germany'},
    ```

  * **Line # 23 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
        {name: 'Germany'},
    ```

  * **Line # 24 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {name: 'Japan'},
    ```

  * **Line # 24 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {name: 'Japan'},
    ```

  * **Line # 24 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
        {name: 'Japan'},
    ```

  * **Line # 25 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {name: 'Belgium'},
    ```

  * **Line # 25 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {name: 'Belgium'},
    ```

  * **Line # 25 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
        {name: 'Belgium'},
    ```

  * **Line # 26 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {name: 'Canada'},
    ```

  * **Line # 26 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {name: 'Canada'},
    ```

  * **Line # 26 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
        {name: 'Canada'},
    ```

  * **Line # 27 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {name: 'Morocco'},
    ```

  * **Line # 27 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {name: 'Morocco'},
    ```

  * **Line # 27 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
        {name: 'Morocco'},
    ```

  * **Line # 28 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {name: 'Croatia'},
    ```

  * **Line # 28 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {name: 'Croatia'},
    ```

  * **Line # 28 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
        {name: 'Croatia'},
    ```

  * **Line # 29 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {name: 'Brazil'},
    ```

  * **Line # 29 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {name: 'Brazil'},
    ```

  * **Line # 29 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
        {name: 'Brazil'},
    ```

  * **Line # 30 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {name: 'Serbia'},
    ```

  * **Line # 30 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {name: 'Serbia'},
    ```

  * **Line # 30 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
        {name: 'Serbia'},
    ```

  * **Line # 31 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {name: 'Switzerland'},
    ```

  * **Line # 31 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {name: 'Switzerland'},
    ```

  * **Line # 31 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
        {name: 'Switzerland'},
    ```

  * **Line # 32 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {name: 'Cameroon'},
    ```

  * **Line # 32 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {name: 'Cameroon'},
    ```

  * **Line # 32 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
        {name: 'Cameroon'},
    ```

  * **Line # 33 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {name: 'Portugal'},
    ```

  * **Line # 33 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {name: 'Portugal'},
    ```

  * **Line # 33 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
        {name: 'Portugal'},
    ```

  * **Line # 34 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {name: 'Ghana'},
    ```

  * **Line # 34 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {name: 'Ghana'},
    ```

  * **Line # 34 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
        {name: 'Ghana'},
    ```

  * **Line # 35 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {name: 'Uruguay'},
    ```

  * **Line # 35 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {name: 'Uruguay'},
    ```

  * **Line # 35 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
        {name: 'Uruguay'},
    ```

  * **Line # 36 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {name: 'Korea Republic'}  
    ```

  * **Line # 36 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {name: 'Korea Republic'}  
    ```

  * **Line # 36 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
        {name: 'Korea Republic'}  
    ```

  * **Line # 36 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

    ```rb
        {name: 'Korea Republic'}  
    ```

  * **Line # 37 - convention:** Layout/MultilineArrayBraceLayout: The closing array brace must be on the same line as the last array element when the opening brace is on the same line as the first array element.

    ```rb
        ])
    ```

  * **Line # 39 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 4 instead of 0).

    ```rb
        # matches
    ```

  * **Line # 39 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
        p "Created #{Team.count} teams"
    ```

  * **Line # 41 - convention:** Layout/LeadingCommentSpace: Missing space after `#`.

    ```rb
        #matches
    ```

  * **Line # 42 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
        Match.destroy_all
    ```

  * **Line # 42 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    visitor_id: 2,
    ```

  * **Line # 43 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
        Match.create!([{local_id: 1, ...
    ```

  * **Line # 43 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    datetime: DateTime.new(2022, 11, 20, 11, 0o0),
    ```

  * **Line # 43 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        Match.create!([{local_id: 1,
    ```

  * **Line # 44 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
        visitor_id: 2,
    ```

  * **Line # 44 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    round: 1
    ```

  * **Line # 44 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
                     round: 1},
    ```

  * **Line # 45 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
    },
    ```

  * **Line # 45 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
        datetime: DateTime.new(2022,11, 20, 11, 00),
    ```

  * **Line # 45 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
        datetime: DateTime.new(2022,11, 20, 11, 00),
    ```

  * **Line # 45 - convention:** Style/NumericLiteralPrefix: Use 0o for octal literals.

    ```rb
        datetime: DateTime.new(2022,11, 20, 11, 00),
    ```

  * **Line # 46 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
        round: 1
    ```

  * **Line # 47 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
        },
    ```

  * **Line # 47 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    visitor_id: 3,
    ```

  * **Line # 48 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {local_id: 1, ...
    ```

  * **Line # 48 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {local_id: 1,
    ```

  * **Line # 48 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    datetime: DateTime.new(2022, 11, 21, 11, 0o0),
    ```

  * **Line # 48 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
                     round: 1},
    ```

  * **Line # 49 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            visitor_id: 3,
    ```

  * **Line # 49 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    round: 1
    ```

  * **Line # 50 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            datetime: DateTime.new(2022,11, 21, 11, 00),
    ```

  * **Line # 50 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
                       },
    ```

  * **Line # 50 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            datetime: DateTime.new(2022,11, 21, 11, 00),
    ```

  * **Line # 50 - convention:** Style/NumericLiteralPrefix: Use 0o for octal literals.

    ```rb
            datetime: DateTime.new(2022,11, 21, 11, 00),
    ```

  * **Line # 51 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            round: 1
    ```

  * **Line # 52 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
            },
    ```

  * **Line # 52 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    visitor_id: 4,
    ```

  * **Line # 52 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
                     round: 1},
    ```

  * **Line # 53 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {local_id: 1, ...
    ```

  * **Line # 53 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {local_id: 1,
    ```

  * **Line # 53 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    datetime: DateTime.new(2022, 11, 25, 11, 0o0),
    ```

  * **Line # 54 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            visitor_id: 4,
    ```

  * **Line # 54 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    round: 1
    ```

  * **Line # 55 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            datetime: DateTime.new(2022,11, 25, 11, 00),
    ```

  * **Line # 55 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
                       },
    ```

  * **Line # 55 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            datetime: DateTime.new(2022,11, 25, 11, 00),
    ```

  * **Line # 55 - convention:** Style/NumericLiteralPrefix: Use 0o for octal literals.

    ```rb
            datetime: DateTime.new(2022,11, 25, 11, 00),
    ```

  * **Line # 56 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            round: 1
    ```

  * **Line # 56 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
                     round: 1},
    ```

  * **Line # 57 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
            },
    ```

  * **Line # 57 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    visitor_id: 3,
    ```

  * **Line # 58 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {local_id: 2, ...
    ```

  * **Line # 58 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {local_id: 2,
    ```

  * **Line # 58 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    datetime: DateTime.new(2022, 11, 25, 11, 0o0),
    ```

  * **Line # 59 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            visitor_id: 3,
    ```

  * **Line # 59 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    round: 1
    ```

  * **Line # 60 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            datetime: DateTime.new(2022,11, 25, 11, 00),
    ```

  * **Line # 60 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
                       },
    ```

  * **Line # 60 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
                     round: 1},
    ```

  * **Line # 60 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            datetime: DateTime.new(2022,11, 25, 11, 00),
    ```

  * **Line # 60 - convention:** Style/NumericLiteralPrefix: Use 0o for octal literals.

    ```rb
            datetime: DateTime.new(2022,11, 25, 11, 00),
    ```

  * **Line # 61 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            round: 1
    ```

  * **Line # 62 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
            },
    ```

  * **Line # 62 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    visitor_id: 4,
    ```

  * **Line # 63 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {local_id: 2, ...
    ```

  * **Line # 63 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {local_id: 2,
    ```

  * **Line # 63 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    datetime: DateTime.new(2022, 11, 29, 11, 0o0),
    ```

  * **Line # 64 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            visitor_id: 4,
    ```

  * **Line # 64 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    round: 1
    ```

  * **Line # 64 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
                     round: 1},
    ```

  * **Line # 65 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            datetime: DateTime.new(2022,11, 29, 11, 00),
    ```

  * **Line # 65 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
                       },
    ```

  * **Line # 65 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            datetime: DateTime.new(2022,11, 29, 11, 00),
    ```

  * **Line # 65 - convention:** Style/NumericLiteralPrefix: Use 0o for octal literals.

    ```rb
            datetime: DateTime.new(2022,11, 29, 11, 00),
    ```

  * **Line # 66 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            round: 1
    ```

  * **Line # 67 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
            },
    ```

  * **Line # 67 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    visitor_id: 4,
    ```

  * **Line # 68 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {local_id: 3, ...
    ```

  * **Line # 68 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {local_id: 3,
    ```

  * **Line # 68 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    datetime: DateTime.new(2022, 11, 29, 11, 0o0),
    ```

  * **Line # 68 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
                     round: 2},
    ```

  * **Line # 69 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            visitor_id: 4,
    ```

  * **Line # 69 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    round: 1
    ```

  * **Line # 70 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            datetime: DateTime.new(2022,11, 29, 11, 00),
    ```

  * **Line # 70 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
                       },
    ```

  * **Line # 70 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            datetime: DateTime.new(2022,11, 29, 11, 00),
    ```

  * **Line # 70 - convention:** Style/NumericLiteralPrefix: Use 0o for octal literals.

    ```rb
            datetime: DateTime.new(2022,11, 29, 11, 00),
    ```

  * **Line # 71 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            round: 1
    ```

  * **Line # 72 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
            },
    ```

  * **Line # 72 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    visitor_id: 6,
    ```

  * **Line # 72 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
                     round: 2},
    ```

  * **Line # 73 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {local_id: 5, ...
    ```

  * **Line # 73 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {local_id: 5,
    ```

  * **Line # 73 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    datetime: DateTime.new(2022, 11, 21, 11, 0o0),
    ```

  * **Line # 74 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            visitor_id: 6,
    ```

  * **Line # 74 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    round: 2
    ```

  * **Line # 75 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            datetime: DateTime.new(2022,11, 21, 11, 00),
    ```

  * **Line # 75 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
                   },
    ```

  * **Line # 75 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            datetime: DateTime.new(2022,11, 21, 11, 00),
    ```

  * **Line # 75 - convention:** Style/NumericLiteralPrefix: Use 0o for octal literals.

    ```rb
            datetime: DateTime.new(2022,11, 21, 11, 00),
    ```

  * **Line # 76 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            round: 2
    ```

  * **Line # 76 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
                     round: 2},
    ```

  * **Line # 77 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
        },
    ```

  * **Line # 77 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    visitor_id: 7,
    ```

  * **Line # 78 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {local_id: 5, ...
    ```

  * **Line # 78 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {local_id: 5,
    ```

  * **Line # 78 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    datetime: DateTime.new(2022, 11, 21, 11, 0o0),
    ```

  * **Line # 79 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            visitor_id: 7,
    ```

  * **Line # 79 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    round: 2
    ```

  * **Line # 80 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            datetime: DateTime.new(2022,11, 21, 11, 00),
    ```

  * **Line # 80 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
                   },
    ```

  * **Line # 80 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
                     round: 2},
    ```

  * **Line # 80 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            datetime: DateTime.new(2022,11, 21, 11, 00),
    ```

  * **Line # 80 - convention:** Style/NumericLiteralPrefix: Use 0o for octal literals.

    ```rb
            datetime: DateTime.new(2022,11, 21, 11, 00),
    ```

  * **Line # 81 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            round: 2
    ```

  * **Line # 82 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
        },
    ```

  * **Line # 82 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    visitor_id: 8,
    ```

  * **Line # 83 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {local_id: 5, ...
    ```

  * **Line # 83 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {local_id: 5,
    ```

  * **Line # 83 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    datetime: DateTime.new(2022, 11, 25, 11, 0o0),
    ```

  * **Line # 84 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            visitor_id: 8,
    ```

  * **Line # 84 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    round: 2
    ```

  * **Line # 84 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
                     round: 2},
    ```

  * **Line # 85 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            datetime: DateTime.new(2022,11, 25, 11, 00),
    ```

  * **Line # 85 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
                   },
    ```

  * **Line # 85 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            datetime: DateTime.new(2022,11, 25, 11, 00),
    ```

  * **Line # 85 - convention:** Style/NumericLiteralPrefix: Use 0o for octal literals.

    ```rb
            datetime: DateTime.new(2022,11, 25, 11, 00),
    ```

  * **Line # 86 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            round: 2
    ```

  * **Line # 87 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
        },
    ```

  * **Line # 87 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    visitor_id: 7,
    ```

  * **Line # 88 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {local_id: 6, ...
    ```

  * **Line # 88 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {local_id: 6,
    ```

  * **Line # 88 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    datetime: DateTime.new(2022, 11, 25, 11, 0o0),
    ```

  * **Line # 88 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
                     round: 2},
    ```

  * **Line # 89 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            visitor_id: 7,
    ```

  * **Line # 89 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    round: 2
    ```

  * **Line # 90 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            datetime: DateTime.new(2022,11, 25, 11, 00),
    ```

  * **Line # 90 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
                   },
    ```

  * **Line # 90 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            datetime: DateTime.new(2022,11, 25, 11, 00),
    ```

  * **Line # 90 - convention:** Style/NumericLiteralPrefix: Use 0o for octal literals.

    ```rb
            datetime: DateTime.new(2022,11, 25, 11, 00),
    ```

  * **Line # 91 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            round: 2
    ```

  * **Line # 92 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
        },
    ```

  * **Line # 92 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    visitor_id: 8,
    ```

  * **Line # 92 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
                     round: 3},
    ```

  * **Line # 93 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {local_id: 6, ...
    ```

  * **Line # 93 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {local_id: 6,
    ```

  * **Line # 93 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    datetime: DateTime.new(2022, 11, 29, 11, 0o0),
    ```

  * **Line # 94 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            visitor_id: 8,
    ```

  * **Line # 94 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    round: 2
    ```

  * **Line # 95 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            datetime: DateTime.new(2022,11, 29, 11, 00),
    ```

  * **Line # 95 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
                   },
    ```

  * **Line # 95 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            datetime: DateTime.new(2022,11, 29, 11, 00),
    ```

  * **Line # 95 - convention:** Style/NumericLiteralPrefix: Use 0o for octal literals.

    ```rb
            datetime: DateTime.new(2022,11, 29, 11, 00),
    ```

  * **Line # 96 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            round: 2
    ```

  * **Line # 96 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
                     round: 3},
    ```

  * **Line # 97 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
        },
    ```

  * **Line # 97 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    visitor_id: 8,
    ```

  * **Line # 98 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {local_id: 7, ...
    ```

  * **Line # 98 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {local_id: 7,
    ```

  * **Line # 98 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    datetime: DateTime.new(2022, 11, 29, 11, 0o0),
    ```

  * **Line # 99 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            visitor_id: 8,
    ```

  * **Line # 99 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    round: 2
    ```

  * **Line # 100 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            datetime: DateTime.new(2022,11, 29, 11, 00),
    ```

  * **Line # 100 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
                   },
    ```

  * **Line # 100 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
                     round: 3},
    ```

  * **Line # 100 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            datetime: DateTime.new(2022,11, 29, 11, 00),
    ```

  * **Line # 100 - convention:** Style/NumericLiteralPrefix: Use 0o for octal literals.

    ```rb
            datetime: DateTime.new(2022,11, 29, 11, 00),
    ```

  * **Line # 101 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            round: 2
    ```

  * **Line # 102 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
        },
    ```

  * **Line # 102 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    visitor_id: 10,
    ```

  * **Line # 103 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {local_id: 9, ...
    ```

  * **Line # 103 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {local_id: 9,
    ```

  * **Line # 103 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    datetime: DateTime.new(2022, 11, 22, 11, 0o0),
    ```

  * **Line # 104 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            visitor_id: 10,
    ```

  * **Line # 104 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    round: 3
    ```

  * **Line # 104 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
                     round: 3},
    ```

  * **Line # 105 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            datetime: DateTime.new(2022,11, 22, 11, 00),
    ```

  * **Line # 105 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
                   },
    ```

  * **Line # 105 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            datetime: DateTime.new(2022,11, 22, 11, 00),
    ```

  * **Line # 105 - convention:** Style/NumericLiteralPrefix: Use 0o for octal literals.

    ```rb
            datetime: DateTime.new(2022,11, 22, 11, 00),
    ```

  * **Line # 106 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            round: 3
    ```

  * **Line # 107 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
        },
    ```

  * **Line # 107 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    visitor_id: 11,
    ```

  * **Line # 108 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {local_id: 9, ...
    ```

  * **Line # 108 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {local_id: 9,
    ```

  * **Line # 108 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    datetime: DateTime.new(2022, 11, 22, 11, 0o0),
    ```

  * **Line # 108 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
                     round: 3},
    ```

  * **Line # 109 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            visitor_id: 11,
    ```

  * **Line # 109 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    round: 3
    ```

  * **Line # 110 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            datetime: DateTime.new(2022,11, 22, 11, 00),
    ```

  * **Line # 110 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
                   },
    ```

  * **Line # 110 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            datetime: DateTime.new(2022,11, 22, 11, 00),
    ```

  * **Line # 110 - convention:** Style/NumericLiteralPrefix: Use 0o for octal literals.

    ```rb
            datetime: DateTime.new(2022,11, 22, 11, 00),
    ```

  * **Line # 111 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            round: 3
    ```

  * **Line # 112 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
        },
    ```

  * **Line # 112 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    visitor_id: 12,
    ```

  * **Line # 112 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
                     round: 3},
    ```

  * **Line # 113 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {local_id: 9, ...
    ```

  * **Line # 113 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {local_id: 9,
    ```

  * **Line # 113 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    datetime: DateTime.new(2022, 11, 26, 11, 0o0),
    ```

  * **Line # 114 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            visitor_id: 12,
    ```

  * **Line # 114 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    round: 3
    ```

  * **Line # 115 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            datetime: DateTime.new(2022,11, 26, 11, 00),
    ```

  * **Line # 115 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
                   },
    ```

  * **Line # 115 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            datetime: DateTime.new(2022,11, 26, 11, 00),
    ```

  * **Line # 115 - convention:** Style/NumericLiteralPrefix: Use 0o for octal literals.

    ```rb
            datetime: DateTime.new(2022,11, 26, 11, 00),
    ```

  * **Line # 116 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            round: 3
    ```

  * **Line # 116 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
                     round: 4},
    ```

  * **Line # 117 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
        },
    ```

  * **Line # 117 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    visitor_id: 11,
    ```

  * **Line # 118 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {local_id: 10, ...
    ```

  * **Line # 118 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {local_id: 10,
    ```

  * **Line # 118 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    datetime: DateTime.new(2022, 11, 26, 11, 0o0),
    ```

  * **Line # 119 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            visitor_id: 11,
    ```

  * **Line # 119 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    round: 3
    ```

  * **Line # 120 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            datetime: DateTime.new(2022,11, 26, 11, 00),
    ```

  * **Line # 120 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
                   },
    ```

  * **Line # 120 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
                     round: 4},
    ```

  * **Line # 120 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            datetime: DateTime.new(2022,11, 26, 11, 00),
    ```

  * **Line # 120 - convention:** Style/NumericLiteralPrefix: Use 0o for octal literals.

    ```rb
            datetime: DateTime.new(2022,11, 26, 11, 00),
    ```

  * **Line # 121 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            round: 3
    ```

  * **Line # 122 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
        },
    ```

  * **Line # 122 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    visitor_id: 12,
    ```

  * **Line # 123 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {local_id: 10, ...
    ```

  * **Line # 123 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {local_id: 10,
    ```

  * **Line # 123 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    datetime: DateTime.new(2022, 11, 30, 11, 0o0),
    ```

  * **Line # 124 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            visitor_id: 12,
    ```

  * **Line # 124 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    round: 3
    ```

  * **Line # 124 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
                     round: 4},
    ```

  * **Line # 125 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            datetime: DateTime.new(2022,11, 30, 11, 00),
    ```

  * **Line # 125 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
                   },
    ```

  * **Line # 125 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            datetime: DateTime.new(2022,11, 30, 11, 00),
    ```

  * **Line # 125 - convention:** Style/NumericLiteralPrefix: Use 0o for octal literals.

    ```rb
            datetime: DateTime.new(2022,11, 30, 11, 00),
    ```

  * **Line # 126 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            round: 3
    ```

  * **Line # 127 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
        },
    ```

  * **Line # 127 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    visitor_id: 12,
    ```

  * **Line # 128 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {local_id: 11, ...
    ```

  * **Line # 128 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {local_id: 11,
    ```

  * **Line # 128 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    datetime: DateTime.new(2022, 11, 30, 11, 0o0),
    ```

  * **Line # 128 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
                     round: 4},
    ```

  * **Line # 129 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            visitor_id: 12,
    ```

  * **Line # 129 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    round: 3
    ```

  * **Line # 130 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            datetime: DateTime.new(2022,11, 30, 11, 00),
    ```

  * **Line # 130 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
                   },
    ```

  * **Line # 130 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            datetime: DateTime.new(2022,11, 30, 11, 00),
    ```

  * **Line # 130 - convention:** Style/NumericLiteralPrefix: Use 0o for octal literals.

    ```rb
            datetime: DateTime.new(2022,11, 30, 11, 00),
    ```

  * **Line # 131 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            round: 3
    ```

  * **Line # 132 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
        },
    ```

  * **Line # 132 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    visitor_id: 14,
    ```

  * **Line # 132 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
                     round: 4},
    ```

  * **Line # 133 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {local_id: 13, ...
    ```

  * **Line # 133 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {local_id: 13,
    ```

  * **Line # 133 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    datetime: DateTime.new(2022, 11, 22, 11, 0o0),
    ```

  * **Line # 134 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            visitor_id: 14,
    ```

  * **Line # 134 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    round: 4
    ```

  * **Line # 135 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            datetime: DateTime.new(2022,11, 22, 11, 00),
    ```

  * **Line # 135 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
                   },
    ```

  * **Line # 135 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            datetime: DateTime.new(2022,11, 22, 11, 00),
    ```

  * **Line # 135 - convention:** Style/NumericLiteralPrefix: Use 0o for octal literals.

    ```rb
            datetime: DateTime.new(2022,11, 22, 11, 00),
    ```

  * **Line # 136 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            round: 4
    ```

  * **Line # 136 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
                     round: 4},
    ```

  * **Line # 137 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
        },
    ```

  * **Line # 137 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    visitor_id: 15,
    ```

  * **Line # 138 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {local_id: 13, ...
    ```

  * **Line # 138 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {local_id: 13,
    ```

  * **Line # 138 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    datetime: DateTime.new(2022, 11, 22, 11, 0o0),
    ```

  * **Line # 139 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            visitor_id: 15,
    ```

  * **Line # 139 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    round: 4
    ```

  * **Line # 140 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            datetime: DateTime.new(2022,11, 22, 11, 00),
    ```

  * **Line # 140 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
                   },
    ```

  * **Line # 140 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
                     round: 5},
    ```

  * **Line # 140 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            datetime: DateTime.new(2022,11, 22, 11, 00),
    ```

  * **Line # 140 - convention:** Style/NumericLiteralPrefix: Use 0o for octal literals.

    ```rb
            datetime: DateTime.new(2022,11, 22, 11, 00),
    ```

  * **Line # 141 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            round: 4
    ```

  * **Line # 142 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
        },
    ```

  * **Line # 142 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    visitor_id: 16,
    ```

  * **Line # 143 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {local_id: 13, ...
    ```

  * **Line # 143 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {local_id: 13,
    ```

  * **Line # 143 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    datetime: DateTime.new(2022, 11, 26, 11, 0o0),
    ```

  * **Line # 144 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            visitor_id: 16,
    ```

  * **Line # 144 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    round: 4
    ```

  * **Line # 144 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
                     round: 5},
    ```

  * **Line # 145 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            datetime: DateTime.new(2022,11, 26, 11, 00),
    ```

  * **Line # 145 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
                   },
    ```

  * **Line # 145 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            datetime: DateTime.new(2022,11, 26, 11, 00),
    ```

  * **Line # 145 - convention:** Style/NumericLiteralPrefix: Use 0o for octal literals.

    ```rb
            datetime: DateTime.new(2022,11, 26, 11, 00),
    ```

  * **Line # 146 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            round: 4
    ```

  * **Line # 147 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
        },
    ```

  * **Line # 147 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    visitor_id: 15,
    ```

  * **Line # 148 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {local_id: 14, ...
    ```

  * **Line # 148 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {local_id: 14,
    ```

  * **Line # 148 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    datetime: DateTime.new(2022, 11, 26, 11, 0o0),
    ```

  * **Line # 148 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
                     round: 5},
    ```

  * **Line # 149 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            visitor_id: 15,
    ```

  * **Line # 149 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    round: 4
    ```

  * **Line # 150 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            datetime: DateTime.new(2022,11, 26, 11, 00),
    ```

  * **Line # 150 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
                   },
    ```

  * **Line # 150 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            datetime: DateTime.new(2022,11, 26, 11, 00),
    ```

  * **Line # 150 - convention:** Style/NumericLiteralPrefix: Use 0o for octal literals.

    ```rb
            datetime: DateTime.new(2022,11, 26, 11, 00),
    ```

  * **Line # 151 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            round: 4
    ```

  * **Line # 152 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
        },
    ```

  * **Line # 152 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    visitor_id: 16,
    ```

  * **Line # 152 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
                     round: 5},
    ```

  * **Line # 153 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {local_id: 14, ...
    ```

  * **Line # 153 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {local_id: 14,
    ```

  * **Line # 153 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    datetime: DateTime.new(2022, 11, 30, 11, 0o0),
    ```

  * **Line # 154 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            visitor_id: 16,
    ```

  * **Line # 154 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    round: 4
    ```

  * **Line # 155 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            datetime: DateTime.new(2022,11, 30, 11, 00),
    ```

  * **Line # 155 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
                   },
    ```

  * **Line # 155 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            datetime: DateTime.new(2022,11, 30, 11, 00),
    ```

  * **Line # 155 - convention:** Style/NumericLiteralPrefix: Use 0o for octal literals.

    ```rb
            datetime: DateTime.new(2022,11, 30, 11, 00),
    ```

  * **Line # 156 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            round: 4
    ```

  * **Line # 156 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
                     round: 5},
    ```

  * **Line # 157 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
        },
    ```

  * **Line # 157 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    visitor_id: 16,
    ```

  * **Line # 158 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {local_id: 15, ...
    ```

  * **Line # 158 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {local_id: 15,
    ```

  * **Line # 158 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    datetime: DateTime.new(2022, 11, 30, 11, 0o0),
    ```

  * **Line # 159 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            visitor_id: 16,
    ```

  * **Line # 159 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    round: 4
    ```

  * **Line # 160 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            datetime: DateTime.new(2022,11, 30, 11, 00),
    ```

  * **Line # 160 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
                   },
    ```

  * **Line # 160 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
                     round: 5},
    ```

  * **Line # 160 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            datetime: DateTime.new(2022,11, 30, 11, 00),
    ```

  * **Line # 160 - convention:** Style/NumericLiteralPrefix: Use 0o for octal literals.

    ```rb
            datetime: DateTime.new(2022,11, 30, 11, 00),
    ```

  * **Line # 161 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            round: 4
    ```

  * **Line # 162 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
        },
    ```

  * **Line # 162 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    visitor_id: 18,
    ```

  * **Line # 163 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {local_id: 17, ...
    ```

  * **Line # 163 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {local_id: 17,
    ```

  * **Line # 163 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    datetime: DateTime.new(2022, 11, 23, 11, 0o0),
    ```

  * **Line # 164 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            visitor_id: 18,
    ```

  * **Line # 164 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    round:  5
    ```

  * **Line # 164 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
                     round: 6},
    ```

  * **Line # 165 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            datetime: DateTime.new(2022,11, 23, 11, 00),
    ```

  * **Line # 165 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
                   },
    ```

  * **Line # 165 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            datetime: DateTime.new(2022,11, 23, 11, 00),
    ```

  * **Line # 165 - convention:** Style/NumericLiteralPrefix: Use 0o for octal literals.

    ```rb
            datetime: DateTime.new(2022,11, 23, 11, 00),
    ```

  * **Line # 166 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            round:5 
    ```

  * **Line # 166 - convention:** Layout/SpaceAfterColon: Space missing after colon.

    ```rb
            round:5 
    ```

  * **Line # 166 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

    ```rb
            round:5 
    ```

  * **Line # 167 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
        },
    ```

  * **Line # 167 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    visitor_id: 19,
    ```

  * **Line # 168 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {local_id: 17, ...
    ```

  * **Line # 168 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {local_id: 17,
    ```

  * **Line # 168 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    datetime: DateTime.new(2022, 11, 23, 11, 0o0),
    ```

  * **Line # 168 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
                     round: 6},
    ```

  * **Line # 169 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            visitor_id: 19,
    ```

  * **Line # 169 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    round: 5
    ```

  * **Line # 170 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            datetime: DateTime.new(2022,11, 23, 11, 00),
    ```

  * **Line # 170 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
                   },
    ```

  * **Line # 170 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            datetime: DateTime.new(2022,11, 23, 11, 00),
    ```

  * **Line # 170 - convention:** Style/NumericLiteralPrefix: Use 0o for octal literals.

    ```rb
            datetime: DateTime.new(2022,11, 23, 11, 00),
    ```

  * **Line # 171 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            round: 5
    ```

  * **Line # 172 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
        },
    ```

  * **Line # 172 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    visitor_id: 20,
    ```

  * **Line # 172 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
                     round: 6},
    ```

  * **Line # 173 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {local_id: 17, ...
    ```

  * **Line # 173 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {local_id: 17,
    ```

  * **Line # 173 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    datetime: DateTime.new(2022, 11, 27, 11, 0o0),
    ```

  * **Line # 174 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            visitor_id: 20,
    ```

  * **Line # 174 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    round: 5
    ```

  * **Line # 175 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            datetime: DateTime.new(2022,11, 27, 11, 00),
    ```

  * **Line # 175 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
                   },
    ```

  * **Line # 175 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            datetime: DateTime.new(2022,11, 27, 11, 00),
    ```

  * **Line # 175 - convention:** Style/NumericLiteralPrefix: Use 0o for octal literals.

    ```rb
            datetime: DateTime.new(2022,11, 27, 11, 00),
    ```

  * **Line # 176 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            round: 5
    ```

  * **Line # 176 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
                     round: 6}, { local_id: 22,
    ```

  * **Line # 177 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
        },
    ```

  * **Line # 177 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    visitor_id: 19,
    ```

  * **Line # 177 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                        visitor_id: 24,
    ```

  * **Line # 177 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                                  visitor_id: 24,
    ```

  * **Line # 178 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {local_id: 18, ...
    ```

  * **Line # 178 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {local_id: 18,
    ```

  * **Line # 178 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    datetime: DateTime.new(2022, 11, 27, 11, 0o0),
    ```

  * **Line # 178 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                        datetime: DateTime.new(2022, 12, 1, 11, 0o0),
    ```

  * **Line # 178 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                                  datetime: DateTime.new(2022, 12, 1, 11, 0o0),
    ```

  * **Line # 179 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            visitor_id: 19,
    ```

  * **Line # 179 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    round: 5
    ```

  * **Line # 179 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                        round: 6},
    ```

  * **Line # 179 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
                        round: 6},
    ```

  * **Line # 179 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                                  round: 6 },
    ```

  * **Line # 180 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            datetime: DateTime.new(2022,11, 27, 11, 00),
    ```

  * **Line # 180 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
                   },
    ```

  * **Line # 180 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            datetime: DateTime.new(2022,11, 27, 11, 00),
    ```

  * **Line # 180 - convention:** Style/NumericLiteralPrefix: Use 0o for octal literals.

    ```rb
            datetime: DateTime.new(2022,11, 27, 11, 00),
    ```

  * **Line # 181 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            round: 5
    ```

  * **Line # 182 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
        },
    ```

  * **Line # 182 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    visitor_id: 20,
    ```

  * **Line # 183 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {local_id: 18, ...
    ```

  * **Line # 183 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {local_id: 18,
    ```

  * **Line # 183 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    datetime: DateTime.new(2022, 12, 1, 11, 0o0),
    ```

  * **Line # 183 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
                     round: 6},
    ```

  * **Line # 184 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            visitor_id: 20,
    ```

  * **Line # 184 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    round: 5
    ```

  * **Line # 185 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            datetime: DateTime.new(2022,12, 1, 11, 00),
    ```

  * **Line # 185 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
                   },
    ```

  * **Line # 185 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            datetime: DateTime.new(2022,12, 1, 11, 00),
    ```

  * **Line # 185 - convention:** Style/NumericLiteralPrefix: Use 0o for octal literals.

    ```rb
            datetime: DateTime.new(2022,12, 1, 11, 00),
    ```

  * **Line # 186 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            round: 5
    ```

  * **Line # 187 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
        },
    ```

  * **Line # 187 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    visitor_id: 20,
    ```

  * **Line # 187 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
                     round: 7},
    ```

  * **Line # 188 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {local_id: 19, ...
    ```

  * **Line # 188 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {local_id: 19,
    ```

  * **Line # 188 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    datetime: DateTime.new(2022, 12, 1, 11, 0o0),
    ```

  * **Line # 189 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            visitor_id: 20,
    ```

  * **Line # 189 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    round: 5
    ```

  * **Line # 190 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            datetime: DateTime.new(2022,12, 1, 11, 00),
    ```

  * **Line # 190 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
                   },
    ```

  * **Line # 190 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            datetime: DateTime.new(2022,12, 1, 11, 00),
    ```

  * **Line # 190 - convention:** Style/NumericLiteralPrefix: Use 0o for octal literals.

    ```rb
            datetime: DateTime.new(2022,12, 1, 11, 00),
    ```

  * **Line # 191 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            round: 5
    ```

  * **Line # 191 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
                     round: 7},
    ```

  * **Line # 192 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
        },
    ```

  * **Line # 192 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    visitor_id: 22,
    ```

  * **Line # 193 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {local_id: 21, ...
    ```

  * **Line # 193 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {local_id: 21,
    ```

  * **Line # 193 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    datetime: DateTime.new(2022, 11, 23, 11, 0o0),
    ```

  * **Line # 194 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            visitor_id: 22,
    ```

  * **Line # 194 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    round:  6
    ```

  * **Line # 195 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            datetime: DateTime.new(2022,11, 23, 11, 00),
    ```

  * **Line # 195 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
                   },
    ```

  * **Line # 195 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
                     round: 7},
    ```

  * **Line # 195 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            datetime: DateTime.new(2022,11, 23, 11, 00),
    ```

  * **Line # 195 - convention:** Style/NumericLiteralPrefix: Use 0o for octal literals.

    ```rb
            datetime: DateTime.new(2022,11, 23, 11, 00),
    ```

  * **Line # 196 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            round:6
    ```

  * **Line # 196 - convention:** Layout/SpaceAfterColon: Space missing after colon.

    ```rb
            round:6
    ```

  * **Line # 197 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
        },
    ```

  * **Line # 197 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    visitor_id: 23,
    ```

  * **Line # 198 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {local_id: 21, ...
    ```

  * **Line # 198 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {local_id: 21,
    ```

  * **Line # 198 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    datetime: DateTime.new(2022, 11, 23, 11, 0o0),
    ```

  * **Line # 199 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            visitor_id: 23,
    ```

  * **Line # 199 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    round:  6
    ```

  * **Line # 199 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
                     round: 7},
    ```

  * **Line # 200 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            datetime: DateTime.new(2022,11, 23, 11, 00),
    ```

  * **Line # 200 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
                   },
    ```

  * **Line # 200 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            datetime: DateTime.new(2022,11, 23, 11, 00),
    ```

  * **Line # 200 - convention:** Style/NumericLiteralPrefix: Use 0o for octal literals.

    ```rb
            datetime: DateTime.new(2022,11, 23, 11, 00),
    ```

  * **Line # 201 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            round:6
    ```

  * **Line # 201 - convention:** Layout/SpaceAfterColon: Space missing after colon.

    ```rb
            round:6
    ```

  * **Line # 202 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
        },
    ```

  * **Line # 202 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    visitor_id: 24,
    ```

  * **Line # 203 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {local_id: 21, ...
    ```

  * **Line # 203 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {local_id: 21,
    ```

  * **Line # 203 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    datetime: DateTime.new(2022, 11, 27, 11, 0o0),
    ```

  * **Line # 203 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
                     round: 7},
    ```

  * **Line # 204 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            visitor_id: 24,
    ```

  * **Line # 204 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    round:  6
    ```

  * **Line # 205 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            datetime: DateTime.new(2022,11, 27, 11, 00),
    ```

  * **Line # 205 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
                   },
    ```

  * **Line # 205 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            datetime: DateTime.new(2022,11, 27, 11, 00),
    ```

  * **Line # 205 - convention:** Style/NumericLiteralPrefix: Use 0o for octal literals.

    ```rb
            datetime: DateTime.new(2022,11, 27, 11, 00),
    ```

  * **Line # 206 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            round:6
    ```

  * **Line # 206 - convention:** Layout/SpaceAfterColon: Space missing after colon.

    ```rb
            round:6
    ```

  * **Line # 207 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
        },
    ```

  * **Line # 207 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    visitor_id: 23,
    ```

  * **Line # 207 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
                     round: 7},
    ```

  * **Line # 208 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {local_id: 22, ...
    ```

  * **Line # 208 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {local_id: 22,
    ```

  * **Line # 208 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    datetime: DateTime.new(2022, 11, 27, 11, 0o0),
    ```

  * **Line # 209 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            visitor_id: 23,
    ```

  * **Line # 209 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    round:  6
    ```

  * **Line # 210 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            datetime: DateTime.new(2022,11, 27, 11, 00),
    ```

  * **Line # 210 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
                   }, { local_id: 22,
    ```

  * **Line # 210 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            datetime: DateTime.new(2022,11, 27, 11, 00),
    ```

  * **Line # 210 - convention:** Style/NumericLiteralPrefix: Use 0o for octal literals.

    ```rb
            datetime: DateTime.new(2022,11, 27, 11, 00),
    ```

  * **Line # 211 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
           visitor_id: 24,
    ```

  * **Line # 211 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            round:6
    ```

  * **Line # 211 - convention:** Layout/SpaceAfterColon: Space missing after colon.

    ```rb
            round:6
    ```

  * **Line # 211 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
                     round: 8},
    ```

  * **Line # 212 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
        },    {local_id: 22,
    ```

  * **Line # 212 - convention:** Layout/ExtraSpacing: Unnecessary spacing detected.

    ```rb
        },    {local_id: 22,
    ```

  * **Line # 212 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
           datetime: DateTime.new(2022, 12, 1, 11, 0o0),
    ```

  * **Line # 212 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        },    {local_id: 22,
    ```

  * **Line # 213 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
           round:  6
    ```

  * **Line # 213 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            visitor_id: 24,
    ```

  * **Line # 214 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
    },
    ```

  * **Line # 214 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            datetime: DateTime.new(2022,12, 1, 11, 00),
    ```

  * **Line # 214 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            datetime: DateTime.new(2022,12, 1, 11, 00),
    ```

  * **Line # 214 - convention:** Style/NumericLiteralPrefix: Use 0o for octal literals.

    ```rb
            datetime: DateTime.new(2022,12, 1, 11, 00),
    ```

  * **Line # 215 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            round:6
    ```

  * **Line # 215 - convention:** Layout/SpaceAfterColon: Space missing after colon.

    ```rb
            round:6
    ```

  * **Line # 215 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
                     round: 8},
    ```

  * **Line # 216 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
        },
    ```

  * **Line # 216 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    visitor_id: 24,
    ```

  * **Line # 217 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {local_id: 23, ...
    ```

  * **Line # 217 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {local_id: 23,
    ```

  * **Line # 217 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    datetime: DateTime.new(2022, 12, 1, 11, 0o0),
    ```

  * **Line # 218 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            visitor_id: 24,
    ```

  * **Line # 218 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    round:  6
    ```

  * **Line # 219 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            datetime: DateTime.new(2022,12, 1, 11, 00),
    ```

  * **Line # 219 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
                   },
    ```

  * **Line # 219 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
                     round: 8},
    ```

  * **Line # 219 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            datetime: DateTime.new(2022,12, 1, 11, 00),
    ```

  * **Line # 219 - convention:** Style/NumericLiteralPrefix: Use 0o for octal literals.

    ```rb
            datetime: DateTime.new(2022,12, 1, 11, 00),
    ```

  * **Line # 220 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            round:6
    ```

  * **Line # 220 - convention:** Layout/SpaceAfterColon: Space missing after colon.

    ```rb
            round:6
    ```

  * **Line # 221 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
        },
    ```

  * **Line # 221 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    visitor_id: 26,
    ```

  * **Line # 222 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {local_id: 25, ...
    ```

  * **Line # 222 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {local_id: 25,
    ```

  * **Line # 222 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    datetime: DateTime.new(2022, 11, 24, 11, 0o0),
    ```

  * **Line # 223 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            visitor_id: 26,
    ```

  * **Line # 223 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    round:  7
    ```

  * **Line # 223 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
                     round: 8},
    ```

  * **Line # 224 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            datetime: DateTime.new(2022,11, 24, 11, 00),
    ```

  * **Line # 224 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
                   },
    ```

  * **Line # 224 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            datetime: DateTime.new(2022,11, 24, 11, 00),
    ```

  * **Line # 224 - convention:** Style/NumericLiteralPrefix: Use 0o for octal literals.

    ```rb
            datetime: DateTime.new(2022,11, 24, 11, 00),
    ```

  * **Line # 225 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            round:7
    ```

  * **Line # 225 - convention:** Layout/SpaceAfterColon: Space missing after colon.

    ```rb
            round:7
    ```

  * **Line # 226 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
        },
    ```

  * **Line # 226 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    visitor_id: 27,
    ```

  * **Line # 227 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {local_id: 25, ...
    ```

  * **Line # 227 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {local_id: 25,
    ```

  * **Line # 227 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    datetime: DateTime.new(2022, 11, 24, 11, 0o0),
    ```

  * **Line # 227 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
                     round: 8},
    ```

  * **Line # 228 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            visitor_id: 27,
    ```

  * **Line # 228 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    round:  7
    ```

  * **Line # 229 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            datetime: DateTime.new(2022,11, 24, 11, 00),
    ```

  * **Line # 229 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
                   },
    ```

  * **Line # 229 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            datetime: DateTime.new(2022,11, 24, 11, 00),
    ```

  * **Line # 229 - convention:** Style/NumericLiteralPrefix: Use 0o for octal literals.

    ```rb
            datetime: DateTime.new(2022,11, 24, 11, 00),
    ```

  * **Line # 230 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            round:7
    ```

  * **Line # 230 - convention:** Layout/SpaceAfterColon: Space missing after colon.

    ```rb
            round:7
    ```

  * **Line # 231 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
        },
    ```

  * **Line # 231 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    visitor_id: 28,
    ```

  * **Line # 231 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
                     round: 8}])
    ```

  * **Line # 232 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {local_id: 25, ...
    ```

  * **Line # 232 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {local_id: 25,
    ```

  * **Line # 232 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    datetime: DateTime.new(2022, 11, 28, 11, 0o0),
    ```

  * **Line # 233 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            visitor_id: 28,
    ```

  * **Line # 233 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    round:  7
    ```

  * **Line # 234 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            datetime: DateTime.new(2022,11, 28, 11, 00),
    ```

  * **Line # 234 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
                   },
    ```

  * **Line # 234 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            datetime: DateTime.new(2022,11, 28, 11, 00),
    ```

  * **Line # 234 - convention:** Style/NumericLiteralPrefix: Use 0o for octal literals.

    ```rb
            datetime: DateTime.new(2022,11, 28, 11, 00),
    ```

  * **Line # 235 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            round:7
    ```

  * **Line # 235 - convention:** Layout/SpaceAfterColon: Space missing after colon.

    ```rb
            round:7
    ```

  * **Line # 236 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
        },
    ```

  * **Line # 236 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    visitor_id: 27,
    ```

  * **Line # 237 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {local_id: 26, ...
    ```

  * **Line # 237 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {local_id: 26,
    ```

  * **Line # 237 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    datetime: DateTime.new(2022, 11, 28, 11, 0o0),
    ```

  * **Line # 238 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            visitor_id: 27,
    ```

  * **Line # 238 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    round:  7
    ```

  * **Line # 239 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            datetime: DateTime.new(2022,11, 28, 11, 00),
    ```

  * **Line # 239 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
                   },
    ```

  * **Line # 239 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            datetime: DateTime.new(2022,11, 28, 11, 00),
    ```

  * **Line # 239 - convention:** Style/NumericLiteralPrefix: Use 0o for octal literals.

    ```rb
            datetime: DateTime.new(2022,11, 28, 11, 00),
    ```

  * **Line # 240 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            round:7
    ```

  * **Line # 240 - convention:** Layout/SpaceAfterColon: Space missing after colon.

    ```rb
            round:7
    ```

  * **Line # 241 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
        },
    ```

  * **Line # 241 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    visitor_id: 28,
    ```

  * **Line # 242 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {local_id: 26, ...
    ```

  * **Line # 242 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {local_id: 26,
    ```

  * **Line # 242 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    datetime: DateTime.new(2022, 12, 2, 11, 0o0),
    ```

  * **Line # 243 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            visitor_id: 28,
    ```

  * **Line # 243 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    round:  7
    ```

  * **Line # 244 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            datetime: DateTime.new(2022,12, 2, 11, 00),
    ```

  * **Line # 244 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
                   },
    ```

  * **Line # 244 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            datetime: DateTime.new(2022,12, 2, 11, 00),
    ```

  * **Line # 244 - convention:** Style/NumericLiteralPrefix: Use 0o for octal literals.

    ```rb
            datetime: DateTime.new(2022,12, 2, 11, 00),
    ```

  * **Line # 245 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            round:7
    ```

  * **Line # 245 - convention:** Layout/SpaceAfterColon: Space missing after colon.

    ```rb
            round:7
    ```

  * **Line # 246 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
        },
    ```

  * **Line # 246 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    visitor_id: 28,
    ```

  * **Line # 247 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {local_id: 27, ...
    ```

  * **Line # 247 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {local_id: 27,
    ```

  * **Line # 247 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    datetime: DateTime.new(2022, 12, 2, 11, 0o0),
    ```

  * **Line # 248 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            visitor_id: 28,
    ```

  * **Line # 248 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    round:  7
    ```

  * **Line # 249 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            datetime: DateTime.new(2022,12, 2, 11, 00),
    ```

  * **Line # 249 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
                   },
    ```

  * **Line # 249 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            datetime: DateTime.new(2022,12, 2, 11, 00),
    ```

  * **Line # 249 - convention:** Style/NumericLiteralPrefix: Use 0o for octal literals.

    ```rb
            datetime: DateTime.new(2022,12, 2, 11, 00),
    ```

  * **Line # 250 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            round:7
    ```

  * **Line # 250 - convention:** Layout/SpaceAfterColon: Space missing after colon.

    ```rb
            round:7
    ```

  * **Line # 251 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
        },
    ```

  * **Line # 251 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    visitor_id: 30,
    ```

  * **Line # 252 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {local_id: 29, ...
    ```

  * **Line # 252 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {local_id: 29,
    ```

  * **Line # 252 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    datetime: DateTime.new(2022, 11, 24, 11, 0o0),
    ```

  * **Line # 253 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            visitor_id: 30,
    ```

  * **Line # 253 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    round:  8
    ```

  * **Line # 254 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            datetime: DateTime.new(2022,11, 24, 11, 00),
    ```

  * **Line # 254 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
                   },
    ```

  * **Line # 254 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            datetime: DateTime.new(2022,11, 24, 11, 00),
    ```

  * **Line # 254 - convention:** Style/NumericLiteralPrefix: Use 0o for octal literals.

    ```rb
            datetime: DateTime.new(2022,11, 24, 11, 00),
    ```

  * **Line # 255 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            round:8
    ```

  * **Line # 255 - convention:** Layout/SpaceAfterColon: Space missing after colon.

    ```rb
            round:8
    ```

  * **Line # 256 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
        },
    ```

  * **Line # 256 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    visitor_id: 31,
    ```

  * **Line # 257 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {local_id: 29, ...
    ```

  * **Line # 257 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {local_id: 29,
    ```

  * **Line # 257 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    datetime: DateTime.new(2022, 11, 24, 11, 0o0),
    ```

  * **Line # 258 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            visitor_id: 31,
    ```

  * **Line # 258 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    round:  8
    ```

  * **Line # 259 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            datetime: DateTime.new(2022,11, 24, 11, 00),
    ```

  * **Line # 259 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
                   },
    ```

  * **Line # 259 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            datetime: DateTime.new(2022,11, 24, 11, 00),
    ```

  * **Line # 259 - convention:** Style/NumericLiteralPrefix: Use 0o for octal literals.

    ```rb
            datetime: DateTime.new(2022,11, 24, 11, 00),
    ```

  * **Line # 260 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            round:8
    ```

  * **Line # 260 - convention:** Layout/SpaceAfterColon: Space missing after colon.

    ```rb
            round:8
    ```

  * **Line # 261 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
        },
    ```

  * **Line # 261 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    visitor_id: 32,
    ```

  * **Line # 262 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {local_id: 29, ...
    ```

  * **Line # 262 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {local_id: 29,
    ```

  * **Line # 262 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    datetime: DateTime.new(2022, 11, 28, 11, 0o0),
    ```

  * **Line # 263 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            visitor_id: 32,
    ```

  * **Line # 263 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    round:  8
    ```

  * **Line # 264 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            datetime: DateTime.new(2022,11, 28, 11, 00),
    ```

  * **Line # 264 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
                   },
    ```

  * **Line # 264 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            datetime: DateTime.new(2022,11, 28, 11, 00),
    ```

  * **Line # 264 - convention:** Style/NumericLiteralPrefix: Use 0o for octal literals.

    ```rb
            datetime: DateTime.new(2022,11, 28, 11, 00),
    ```

  * **Line # 265 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            round:8
    ```

  * **Line # 265 - convention:** Layout/SpaceAfterColon: Space missing after colon.

    ```rb
            round:8
    ```

  * **Line # 266 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
        },
    ```

  * **Line # 266 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    visitor_id: 31,
    ```

  * **Line # 267 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {local_id: 30, ...
    ```

  * **Line # 267 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {local_id: 30,
    ```

  * **Line # 267 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    datetime: DateTime.new(2022, 11, 28, 11, 0o0),
    ```

  * **Line # 268 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            visitor_id: 31,
    ```

  * **Line # 268 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    round:  8
    ```

  * **Line # 269 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            datetime: DateTime.new(2022,11, 28, 11, 00),
    ```

  * **Line # 269 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
                   },
    ```

  * **Line # 269 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            datetime: DateTime.new(2022,11, 28, 11, 00),
    ```

  * **Line # 269 - convention:** Style/NumericLiteralPrefix: Use 0o for octal literals.

    ```rb
            datetime: DateTime.new(2022,11, 28, 11, 00),
    ```

  * **Line # 270 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            round:8
    ```

  * **Line # 270 - convention:** Layout/SpaceAfterColon: Space missing after colon.

    ```rb
            round:8
    ```

  * **Line # 271 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
        },
    ```

  * **Line # 271 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    visitor_id: 32,
    ```

  * **Line # 272 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {local_id: 30, ...
    ```

  * **Line # 272 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {local_id: 30,
    ```

  * **Line # 272 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    datetime: DateTime.new(2022, 12, 2, 11, 0o0),
    ```

  * **Line # 273 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            visitor_id: 32,
    ```

  * **Line # 273 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    round:  8
    ```

  * **Line # 274 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            datetime: DateTime.new(2022,12, 2, 11, 00),
    ```

  * **Line # 274 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
                   },
    ```

  * **Line # 274 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            datetime: DateTime.new(2022,12, 2, 11, 00),
    ```

  * **Line # 274 - convention:** Style/NumericLiteralPrefix: Use 0o for octal literals.

    ```rb
            datetime: DateTime.new(2022,12, 2, 11, 00),
    ```

  * **Line # 275 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            round:8
    ```

  * **Line # 275 - convention:** Layout/SpaceAfterColon: Space missing after colon.

    ```rb
            round:8
    ```

  * **Line # 276 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
        },
    ```

  * **Line # 276 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    visitor_id: 32,
    ```

  * **Line # 277 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
        {local_id: 31, ...
    ```

  * **Line # 277 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        {local_id: 31,
    ```

  * **Line # 277 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    datetime: DateTime.new(2022, 12, 2, 11, 0o0),
    ```

  * **Line # 278 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            visitor_id: 32,
    ```

  * **Line # 278 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                    round:  8
    ```

  * **Line # 279 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            datetime: DateTime.new(2022,12, 2, 11, 00),
    ```

  * **Line # 279 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
                   }])
    ```

  * **Line # 279 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            datetime: DateTime.new(2022,12, 2, 11, 00),
    ```

  * **Line # 279 - convention:** Style/NumericLiteralPrefix: Use 0o for octal literals.

    ```rb
            datetime: DateTime.new(2022,12, 2, 11, 00),
    ```

  * **Line # 280 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
            round:8
    ```

  * **Line # 280 - convention:** Layout/SpaceAfterColon: Space missing after colon.

    ```rb
            round:8
    ```

  * **Line # 281 - convention:** Layout/MultilineHashBraceLayout: Closing hash brace must be on the same line as the last hash element when opening brace is on the same line as the first hash element.

    ```rb
        }
    ```

  * **Line # 282 - convention:** Layout/MultilineArrayBraceLayout: The closing array brace must be on the same line as the last array element when the opening brace is on the same line as the first array element.

    ```rb
    ])
    ```

  * **Line # 283 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
        p "Created #{Team.count} matches"
    ```

  * **Line # 285 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
        g = Gambler.create(name: 'fungo', Email: 'asc@gmailcom' , Admin: true)
    ```

  * **Line # 285 - convention:** Layout/SpaceBeforeComma: Space found before comma.

    ```rb
        g = Gambler.create(name: 'fungo', Email: 'asc@gmailcom' , Admin: true)
    ```

  * **Line # 286 - convention:** Layout/IndentationStyle: Tab detected in indentation.

    ```rb
    	g.password=('123')
    ```

  * **Line # 286 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
    	g.password=('123')
    ```

  * **Line # 286 - convention:** Layout/SpaceAroundOperators: Surrounding space missing for operator `=`.

    ```rb
    	g.password=('123')
    ```

  * **Line # 287 - convention:** Layout/IndentationStyle: Tab detected in indentation.

    ```rb
    	g.save
    ```

  * **Line # 287 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
    	g.save
    ```

  * **Line # 289 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
        g = Gambler.create(name: 'santi', Email: 'sant@gmailcom' , Admin: true)
    ```

  * **Line # 289 - convention:** Layout/SpaceBeforeComma: Space found before comma.

    ```rb
        g = Gambler.create(name: 'santi', Email: 'sant@gmailcom' , Admin: true)
    ```

  * **Line # 290 - convention:** Layout/IndentationStyle: Tab detected in indentation.

    ```rb
    	g.password=('123')
    ```

  * **Line # 290 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
    	g.password=('123')
    ```

  * **Line # 290 - convention:** Layout/SpaceAroundOperators: Surrounding space missing for operator `=`.

    ```rb
    	g.password=('123')
    ```

  * **Line # 291 - convention:** Layout/IndentationStyle: Tab detected in indentation.

    ```rb
    	g.save
    ```

  * **Line # 291 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
    	g.save
    ```

  * **Line # 293 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
        g = Gambler.create(name: 'vale', Email: 'vale@gmailcom' , Admin: true)
    ```

  * **Line # 293 - convention:** Layout/SpaceBeforeComma: Space found before comma.

    ```rb
        g = Gambler.create(name: 'vale', Email: 'vale@gmailcom' , Admin: true)
    ```

  * **Line # 294 - convention:** Layout/IndentationStyle: Tab detected in indentation.

    ```rb
    	g.password=('123')
    ```

  * **Line # 294 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
    	g.password=('123')
    ```

  * **Line # 294 - convention:** Layout/SpaceAroundOperators: Surrounding space missing for operator `=`.

    ```rb
    	g.password=('123')
    ```

  * **Line # 295 - convention:** Layout/IndentationStyle: Tab detected in indentation.

    ```rb
    	g.save
    ```

  * **Line # 295 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
    	g.save
    ```

### models/Gambler.rb - (144 offenses)
  * **Line # 1 - convention:** Naming/FileName: The name of this source file (`Gambler.rb`) should use snake_case.

    ```rb
    require 'active_record'
    ```

  * **Line # 1 - convention:** Style/FrozenStringLiteralComment: Missing frozen string literal comment.

    ```rb
    require 'active_record'
    ```

  * **Line # 4 - convention:** Style/Documentation: Missing top-level documentation comment for `class Gambler`.

    ```rb
    class Gambler < ActiveRecord::Base
    ```

  * **Line # 5 - convention:** Layout/IndentationStyle: Tab detected in indentation.

    ```rb
    	include BCrypt
    ```

  * **Line # 5 - convention:** Layout/IndentationWidth: Use 2 (not 1) spaces for indentation.

    ```rb
    	include BCrypt
    ```

  * **Line # 5 - convention:** Layout/IndentationWidth: Use 2 (not 3) spaces for indentation.

    ```rb
       include BCrypt
    ```

  * **Line # 6 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 1 instead of 3).

    ```rb
     # Un jugador hace muchas predicciones
    ```

  * **Line # 6 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 2 instead of 1).

    ```rb
      #Un jugador hace muchas predicciones
    ```

  * **Line # 6 - convention:** Layout/LeadingCommentSpace: Missing space after `#`.

    ```rb
      #Un jugador hace muchas predicciones
    ```

  * **Line # 6 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 3 instead of 2).

    ```rb
       # Un jugador hace muchas predicciones
    ```

  * **Line # 7 - convention:** Layout/IndentationStyle: Tab detected in indentation.

    ```rb
    	has_many :prediction
    ```

  * **Line # 7 - convention:** Layout/IndentationWidth: Use 2 (not 1) spaces for indentation.

    ```rb
    	has_many :prediction
    ```

  * **Line # 7 - convention:** Layout/IndentationWidth: Use 2 (not 3) spaces for indentation.

    ```rb
       has_many :prediction
    ```

  * **Line # 8 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 1 instead of 4).

    ```rb
     # Si o si debe tener nombre, apellido y mail
    ```

  * **Line # 8 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 2 instead of 1).

    ```rb
      # Si o si debe tener nombre, apellido y mail
    ```

  * **Line # 8 - convention:** Layout/LeadingCommentSpace: Missing space after `#`.

    ```rb
      #Si o si debe tener nombre, apellido y mail
    ```

  * **Line # 8 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 4 instead of 2).

    ```rb
        # Si o si debe tener nombre, apellido y mail
    ```

  * **Line # 9 - convention:** Layout/IndentationWidth: Use 2 (not 1) spaces for indentation.

    ```rb
     validates :name, presence: true
    ```

  * **Line # 9 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
        validates :name, presence: true
    ```

  * **Line # 9 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
     validates :name, presence: true
    ```

  * **Line # 9 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
      validates  :name, presence: true
    ```

  * **Line # 9 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
        validates :name, presence: true
    ```

  * **Line # 9 - convention:** Layout/ExtraSpacing: Unnecessary spacing detected.

    ```rb
      validates  :name, presence: true
    ```

  * **Line # 9 - convention:** Layout/SpaceBeforeFirstArg: Put one space between the method name and the first argument.

    ```rb
      validates  :name, presence: true
    ```

  * **Line # 10 - convention:** Layout/IndentationWidth: Use 2 (not 1) spaces for indentation.

    ```rb
     validates :Email, presence: true
    ```

  * **Line # 10 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
        validates :Email, presence: true
    ```

  * **Line # 10 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
     validates :Email, presence: true
    ```

  * **Line # 10 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
      validates :Email, presence: true
    ```

  * **Line # 10 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
        validates :Email, presence: true
    ```

  * **Line # 11 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 1 instead of 4).

    ```rb
     # El mail debe ser unico
    ```

  * **Line # 11 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 2 instead of 1).

    ```rb
      # El mail debe ser unico
    ```

  * **Line # 11 - convention:** Layout/LeadingCommentSpace: Missing space after `#`.

    ```rb
      #El mail debe ser unico
    ```

  * **Line # 11 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 4 instead of 2).

    ```rb
        # El mail debe ser unico
    ```

  * **Line # 12 - convention:** Layout/IndentationWidth: Use 2 (not 1) spaces for indentation.

    ```rb
     validates :name, uniqueness: true
    ```

  * **Line # 12 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
        validates :name, uniqueness: true
    ```

  * **Line # 12 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
     validates :name, uniqueness: true
    ```

  * **Line # 12 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
      validates  :name, uniqueness: true
    ```

  * **Line # 12 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
        validates :name, uniqueness: true
    ```

  * **Line # 12 - convention:** Layout/ExtraSpacing: Unnecessary spacing detected.

    ```rb
      validates  :name, uniqueness: true
    ```

  * **Line # 12 - convention:** Layout/SpaceBeforeFirstArg: Put one space between the method name and the first argument.

    ```rb
      validates  :name, uniqueness: true
    ```

  * **Line # 13 - convention:** Layout/IndentationWidth: Use 2 (not 1) spaces for indentation.

    ```rb
     validates :Email, uniqueness: true
    ```

  * **Line # 13 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
        validates :Email, uniqueness: true
    ```

  * **Line # 13 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
     validates :Email, uniqueness: true
    ```

  * **Line # 13 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
      validates :Email, uniqueness: true
    ```

  * **Line # 13 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
        validates :Email, uniqueness: true
    ```

  * **Line # 14 - convention:** Layout/IndentationWidth: Use 2 (not 1) spaces for indentation.

    ```rb
     validates :Total_score, comparison: { greater_than: -1 }
    ```

  * **Line # 14 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
        validates :Total_score, comparison: { greater_than: -1 }
    ```

  * **Line # 14 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
     validates :Total_score, comparison: { greater_than: -1 }
    ```

  * **Line # 14 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
      validates :Total_score, comparison: {greater_than: -1}
    ```

  * **Line # 14 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
        validates :Total_score, comparison: { greater_than: -1 }
    ```

  * **Line # 14 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
      validates :Total_score, comparison: {greater_than: -1}
    ```

  * **Line # 14 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
      validates :Total_score, comparison: {greater_than: -1}
    ```

  * **Line # 15 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

  * **Line # 16 - convention:** Layout/IndentationWidth: Use 2 (not 1) spaces for indentation.

    ```rb
     def password
    ```

  * **Line # 16 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
        def password
    ```

  * **Line # 16 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
     def password ...
    ```

  * **Line # 16 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
      def password ...
    ```

  * **Line # 16 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
        def password ...
    ```

  * **Line # 20 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 1 instead of 4).

    ```rb
     # Crear una nueva contraseña
    ```

  * **Line # 20 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 2 instead of 1).

    ```rb
      # Crear una nueva contraseña
    ```

  * **Line # 20 - convention:** Layout/LeadingCommentSpace: Missing space after `#`.

    ```rb
      #Crear una nueva contraseña 
    ```

  * **Line # 20 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 4 instead of 2).

    ```rb
        # Crear una nueva contraseña
    ```

  * **Line # 20 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

    ```rb
      #Crear una nueva contraseña 
    ```

  * **Line # 21 - convention:** Layout/IndentationWidth: Use 2 (not 1) spaces for indentation.

    ```rb
     def password=(new_password)
    ```

  * **Line # 21 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
        def password=(new_password)
    ```

  * **Line # 21 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
     def password=(new_password) ...
    ```

  * **Line # 21 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
      def password=(new_password) ...
    ```

  * **Line # 21 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
        def password=(new_password) ...
    ```

  * **Line # 26 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 1 instead of 4).

    ```rb
     # Crear una prediccion
    ```

  * **Line # 26 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 2 instead of 1).

    ```rb
      # Crear una prediccion
    ```

  * **Line # 26 - convention:** Layout/LeadingCommentSpace: Missing space after `#`.

    ```rb
      #Crear una prediccion 
    ```

  * **Line # 26 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 4 instead of 2).

    ```rb
        # Crear una prediccion
    ```

  * **Line # 26 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

    ```rb
      #Crear una prediccion 
    ```

  * **Line # 27 - convention:** Layout/IndentationWidth: Use 2 (not 1) spaces for indentation.

    ```rb
     def create_prediction(match, t1Goals, t2Goals)
    ```

  * **Line # 27 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
        def create_prediction(match, t1Goals, t2Goals)
    ```

  * **Line # 27 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
     def create_prediction(match, t1Goals, t2Goals) ...
    ```

  * **Line # 27 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
      def create_prediction(match,t1Goals,t2Goals) ...
    ```

  * **Line # 27 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
        def create_prediction(match, t1Goals, t2Goals) ...
    ```

  * **Line # 27 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
      def create_prediction(match,t1Goals,t2Goals)
    ```

  * **Line # 27 - convention:** Naming/MethodParameterName: Only use lowercase characters for method parameter.

    ```rb
      def create_prediction(match, t1Goals, t2Goals)
    ```

  * **Line # 27 - convention:** Naming/VariableName: Use snake_case for variable names.

    ```rb
      def create_prediction(match, t1Goals, t2Goals)
    ```

  * **Line # 27 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
      def create_prediction(match,t1Goals,t2Goals)
    ```

  * **Line # 27 - convention:** Naming/MethodParameterName: Only use lowercase characters for method parameter.

    ```rb
      def create_prediction(match, t1Goals, t2Goals)
    ```

  * **Line # 27 - convention:** Naming/VariableName: Use snake_case for variable names.

    ```rb
      def create_prediction(match, t1Goals, t2Goals)
    ```

  * **Line # 28 - convention:** Naming/VariableName: Use snake_case for variable names.

    ```rb
        Prediction.new(team1_goals: t1Goals, team2_goals: t2Goals, match: match, gambler: self)
    ```

  * **Line # 28 - convention:** Naming/VariableName: Use snake_case for variable names.

    ```rb
        Prediction.new(team1_goals: t1Goals, team2_goals: t2Goals, match: match, gambler: self)
    ```

  * **Line # 28 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

    ```rb
        Prediction.new(team1_goals: t1Goals, team2_goals: t2Goals, match: match, gambler: self) 
    ```

  * **Line # 31 - convention:** Layout/IndentationWidth: Use 2 (not 1) spaces for indentation.

    ```rb
     def statistics
    ```

  * **Line # 31 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
        def statistics
    ```

  * **Line # 31 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
     def statistics ...
    ```

  * **Line # 31 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
      def statistics()         ...
    ```

  * **Line # 31 - convention:** Metrics/AbcSize: Assignment Branch Condition size for statistics is too high. [<12, 13, 8> 19.42/17]

    ```rb
      def statistics ...
    ```

  * **Line # 31 - convention:** Metrics/MethodLength: Method has too many lines. [14/10]

    ```rb
      def statistics ...
    ```

  * **Line # 31 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
        def statistics ...
    ```

  * **Line # 31 - convention:** Style/DefWithParentheses: Omit the parentheses in defs when the method doesn't accept any arguments.

    ```rb
      def statistics()        
    ```

  * **Line # 31 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

    ```rb
      def statistics()        
    ```

  * **Line # 33 - convention:** Layout/LeadingCommentSpace: Missing space after `#`.

    ```rb
        #¿Como traer la prediccion y el resultado del partido correspondiente de un cierto usuario?
    ```

  * **Line # 35 - convention:** Layout/LeadingCommentSpace: Missing space after `#`.

    ```rb
        #Todas las predicciones de un cierto usuario
    ```

  * **Line # 36 - convention:** Style/RedundantSelf: Redundant `self` detected.

    ```rb
        predicciones_usuario = self.prediction
    ```

  * **Line # 38 - convention:** Layout/LeadingCommentSpace: Missing space after `#`.

    ```rb
        #Resultados de los partidos por los que aposto
    ```

  * **Line # 39 - convention:** Layout/LeadingCommentSpace: Missing space after `#`.

    ```rb
        #resultados = Results.where(prediction_id: gambler.prediction_id)
    ```

  * **Line # 41 - convention:** Style/MethodCallWithoutArgsParentheses: Do not use parentheses for method calls with no arguments.

    ```rb
          r = Result.where(match_id: p.match_id).first()
    ```

  * **Line # 42 - convention:** Style/NegatedIf: Favor `unless` over `if` for negative conditions.

    ```rb
         if (!r.nil?) ...
    ```

  * **Line # 42 - convention:** Style/Next: Use `next` to skip iteration.

    ```rb
         if (!r.nil?)
    ```

  * **Line # 42 - convention:** Layout/EmptyLineAfterGuardClause: Add empty line after guard clause.

    ```rb
          next if r.nil?
    ```

  * **Line # 42 - convention:** Layout/SpaceAroundKeyword: Space after keyword `if` is missing.

    ```rb
          if(r != nil)
    ```

  * **Line # 42 - convention:** Style/Next: Use `next` to skip iteration.

    ```rb
          if(r != nil)
    ```

  * **Line # 42 - convention:** Style/Next: Use `next` to skip iteration.

    ```rb
            unless r.nil?
    ```

  * **Line # 42 - convention:** Style/ParenthesesAroundCondition: Don't use parentheses around the condition of an `if`.

    ```rb
         if (!r.nil?)
    ```

  * **Line # 42 - convention:** Style/RedundantParentheses: Don't use parentheses around an unary operation.

    ```rb
         if (!r.nil?)
    ```

  * **Line # 42 - convention:** Style/NonNilCheck: Prefer `!r.nil?` over `r != nil`.

    ```rb
          if(r != nil)
    ```

  * **Line # 43 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
            t1GoalsP = p.team1_goals # Goles equipo 1 segun prediccion
    ```

  * **Line # 43 - convention:** Layout/LeadingCommentSpace: Missing space after `#`.

    ```rb
            t1GoalsP = p.team1_goals #Goles equipo 1 segun prediccion
    ```

  * **Line # 44 - convention:** Naming/VariableName: Use snake_case for variable names.

    ```rb
          t1GoalsP = p.team1_goals # Goles equipo 1 segun prediccion
    ```

  * **Line # 44 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
            t2GoalsP = p.team2_goals # Goles equipo 2 segun prediccion
    ```

  * **Line # 44 - convention:** Layout/LeadingCommentSpace: Missing space after `#`.

    ```rb
            t2GoalsP = p.team2_goals #Goles equipo 2 segun prediccion
    ```

  * **Line # 45 - convention:** Naming/VariableName: Use snake_case for variable names.

    ```rb
          t2GoalsP = p.team2_goals # Goles equipo 2 segun prediccion
    ```

  * **Line # 45 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
            t1GoalsR = r.team1_goals # Goles equipo 1 segun resultados
    ```

  * **Line # 45 - convention:** Layout/LeadingCommentSpace: Missing space after `#`.

    ```rb
            t1GoalsR = r.team1_goals #Goles equipo 1 segun resultados
    ```

  * **Line # 46 - convention:** Naming/VariableName: Use snake_case for variable names.

    ```rb
          t1GoalsR = r.team1_goals # Goles equipo 1 segun resultados
    ```

  * **Line # 46 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
            t2GoalsR = r.team2_goals # Goles equipo 2 segun resultados
    ```

  * **Line # 46 - convention:** Layout/LeadingCommentSpace: Missing space after `#`.

    ```rb
            t2GoalsR = r.team2_goals #Goles equipo 2 segun resultados 
    ```

  * **Line # 46 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

    ```rb
            t2GoalsR = r.team2_goals #Goles equipo 2 segun resultados 
    ```

  * **Line # 47 - convention:** Naming/VariableName: Use snake_case for variable names.

    ```rb
          t2GoalsR = r.team2_goals # Goles equipo 2 segun resultados
    ```

  * **Line # 47 - convention:** Layout/LeadingCommentSpace: Missing space after `#`.

    ```rb
            #Si la cantidad de goles coincide, se suma un acierto
    ```

  * **Line # 48 - convention:** Style/IfUnlessModifier: Favor modifier `if` usage when having a single-line body. Another good alternative is the usage of control flow `&&`/`||`.

    ```rb
           if t1GoalsP == t1GoalsR && t2GoalsP == t2GoalsR
    ```

  * **Line # 48 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 8 instead of 6).

    ```rb
            # Si la cantidad de goles coincide, se suma un acierto
    ```

  * **Line # 48 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
            cant_aciertos += 1 if t1GoalsP == t1GoalsR && t2GoalsP == t2GoalsR
    ```

  * **Line # 48 - convention:** Style/IfUnlessModifier: Favor modifier `if` usage when having a single-line body. Another good alternative is the usage of control flow `&&`/`||`.

    ```rb
            if t1GoalsP == t1GoalsR && t2GoalsP == t2GoalsR
    ```

  * **Line # 48 - convention:** Style/IfUnlessModifier: Favor modifier `if` usage when having a single-line body. Another good alternative is the usage of control flow `&&`/`||`.

    ```rb
              if t1GoalsP == t1GoalsR && t2GoalsP == t2GoalsR
    ```

  * **Line # 49 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
            cant_predicciones += 1
    ```

  * **Line # 49 - convention:** Style/SelfAssignment: Use self-assignment shorthand `+=`.

    ```rb
              cant_aciertos = cant_aciertos + 1
    ```

  * **Line # 49 - convention:** Naming/VariableName: Use snake_case for variable names.

    ```rb
          cant_aciertos += 1 if t1GoalsP == t1GoalsR && t2GoalsP == t2GoalsR
    ```

  * **Line # 49 - convention:** Naming/VariableName: Use snake_case for variable names.

    ```rb
          cant_aciertos += 1 if t1GoalsP == t1GoalsR && t2GoalsP == t2GoalsR
    ```

  * **Line # 49 - convention:** Naming/VariableName: Use snake_case for variable names.

    ```rb
          cant_aciertos += 1 if t1GoalsP == t1GoalsR && t2GoalsP == t2GoalsR
    ```

  * **Line # 49 - convention:** Naming/VariableName: Use snake_case for variable names.

    ```rb
          cant_aciertos += 1 if t1GoalsP == t1GoalsR && t2GoalsP == t2GoalsR
    ```

  * **Line # 53 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

    ```rb
        end    
    ```

  * **Line # 54 - convention:** Style/IfUnlessModifier: Favor modifier `if` usage when having a single-line body. Another good alternative is the usage of control flow `&&`/`||`.

    ```rb
       if (cant_predicciones != 0)
    ```

  * **Line # 54 - convention:** Layout/SpaceAroundKeyword: Space after keyword `if` is missing.

    ```rb
        if(cant_predicciones != 0)
    ```

  * **Line # 54 - convention:** Style/IfUnlessModifier: Favor modifier `if` usage when having a single-line body. Another good alternative is the usage of control flow `&&`/`||`.

    ```rb
        if(cant_predicciones != 0)
    ```

  * **Line # 54 - convention:** Style/IfUnlessModifier: Favor modifier `if` usage when having a single-line body. Another good alternative is the usage of control flow `&&`/`||`.

    ```rb
          if cant_predicciones != 0
    ```

  * **Line # 54 - convention:** Style/ParenthesesAroundCondition: Don't use parentheses around the condition of an `if`.

    ```rb
       if (cant_predicciones != 0)
    ```

  * **Line # 55 - convention:** Layout/IndentationWidth: Use 2 (not 3) spaces for indentation.

    ```rb
           self.Statistical_data = (cant_aciertos * 100) / cant_predicciones
    ```

  * **Line # 59 - convention:** Layout/TrailingEmptyLines: 6 trailing blank lines detected.

    ```rb
     ...
    ```

### models/Match.rb - (42 offenses)
  * **Line # 1 - convention:** Naming/FileName: The name of this source file (`Match.rb`) should use snake_case.

    ```rb
    require 'active_record'
    ```

  * **Line # 1 - convention:** Style/FrozenStringLiteralComment: Missing frozen string literal comment.

    ```rb
    require 'active_record'
    ```

  * **Line # 3 - convention:** Style/Documentation: Missing top-level documentation comment for `class Match`.

    ```rb
    class Match < ActiveRecord::Base
    ```

  * **Line # 4 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
        belongs_to :local, class_name: 'Team'
    ```

  * **Line # 5 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
        belongs_to :visitor, class_name: 'Team'
    ```

  * **Line # 6 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
        enum round: [:groupA, :groupB, :groupC, :groupD, :groupE, :groupF, :groupG, :groupH, :round8, :quarter, :semi, :thirdQuarter, :final]
    ```

  * **Line # 6 - convention:** Style/SymbolArray: Use `%i` or `%I` for an array of symbols.

    ```rb
      enum round: [:groupA, :groupB, :groupC, :groupD, :groupE, :groupF, :groupG, :groupH, :round8, :quarter, :semi,  ...
    ```

  * **Line # 6 - convention:** Style/SymbolArray: Use `%i` or `%I` for an array of symbols.

    ```rb
        enum round: [:groupA, :groupB, :groupC, :groupD, :groupE, :groupF, :groupG, :groupH, :round8, :quarter, :semi, :thirdQuarter, :final]
    ```

  * **Line # 6 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

    ```rb
      enum round: [:groupA, :groupB, :groupC, :groupD, :groupE, :groupF, :groupG, :groupH, :round8, :quarter, :semi, 
    ```

  * **Line # 6 - convention:** Layout/LineLength: Line is too long. [137/120]

    ```rb
        enum round: [:groupA, :groupB, :groupC, :groupD, :groupE, :groupF, :groupG, :groupH, :round8, :quarter, :semi, :thirdQuarter, :final]
    ```

  * **Line # 7 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
    :thirdQuarter, :final]
    ```

  * **Line # 7 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
        validates :local, presence: true
    ```

  * **Line # 7 - convention:** Layout/ArrayAlignment: Align the elements of an array literal if they span more than one line.

    ```rb
                   thirdQuarter final]
    ```

  * **Line # 8 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
        validates :visitor, presence: true
    ```

  * **Line # 9 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
        validates :round, presence: true
    ```

  * **Line # 10 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
        validates :round, uniqueness: {scope: [:local_id, :visitor_id], message: "Once match with same teams per round"}
    ```

  * **Line # 10 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        validates :round, uniqueness: {scope: [:local_id, :visitor_id], message: "Once match with same teams per round"}
    ```

  * **Line # 10 - convention:** Style/SymbolArray: Use `%i` or `%I` for an array of symbols.

    ```rb
        validates :round, uniqueness: {scope: [:local_id, :visitor_id], message: "Once match with same teams per round"}
    ```

  * **Line # 10 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        validates :round, uniqueness: {scope: [:local_id, :visitor_id], message: "Once match with same teams per round"}
    ```

  * **Line # 10 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
        validates :round, uniqueness: {scope: [:local_id, :visitor_id], message: "Once match with same teams per round"}
    ```

  * **Line # 11 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
        def check_prop
    ```

  * **Line # 11 - convention:** Style/SymbolArray: Use `%i` or `%I` for an array of symbols.

    ```rb
      validates :round, uniqueness: { scope: [:local_id, :visitor_id], message: 'Once match with same teams per round' }
    ```

  * **Line # 12 - convention:** Layout/SpaceAroundOperators: Surrounding space missing for operator `!=`.

    ```rb
            local!=visitor
    ```

  * **Line # 13 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
          local != visitor
    ```

  * **Line # 15 - convention:** Layout/LeadingCommentSpace: Missing space after `#`.

    ```rb
        #Dice si dos partidos son iguales. 
    ```

  * **Line # 15 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

    ```rb
        #Dice si dos partidos son iguales. 
    ```

  * **Line # 16 - convention:** Layout/LeadingCommentSpace: Missing space after `#`.

    ```rb
        #Dos partidos son iguales si juegan los mismo equipos en la misma ronda
    ```

  * **Line # 17 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
        def equals(other)
    ```

  * **Line # 17 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 4 instead of 2).

    ```rb
        # Dos partidos son iguales si juegan los mismo equipos en la misma ronda
    ```

  * **Line # 18 - convention:** Style/RedundantSelf: Redundant `self` detected.

    ```rb
            ((other.local == self.local || other.local == self.visitor) && (other.visitor == self.visitor || other.visitor == self.local) && (other.round == self.round) )
    ```

  * **Line # 18 - convention:** Style/RedundantSelf: Redundant `self` detected.

    ```rb
            ((other.local == self.local || other.local == self.visitor) && (other.visitor == self.visitor || other.visitor == self.local) && (other.round == self.round) )
    ```

  * **Line # 18 - convention:** Style/RedundantSelf: Redundant `self` detected.

    ```rb
            ((other.local == self.local || other.local == self.visitor) && (other.visitor == self.visitor || other.visitor == self.local) && (other.round == self.round) )
    ```

  * **Line # 18 - convention:** Style/RedundantSelf: Redundant `self` detected.

    ```rb
            ((other.local == self.local || other.local == self.visitor) && (other.visitor == self.visitor || other.visitor == self.local) && (other.round == self.round) )
    ```

  * **Line # 18 - convention:** Style/RedundantSelf: Redundant `self` detected.

    ```rb
            ((other.local == self.local || other.local == self.visitor) && (other.visitor == self.visitor || other.visitor == self.local) && (other.round == self.round) )
    ```

  * **Line # 18 - convention:** Layout/SpaceInsideParens: Space inside parentheses detected.

    ```rb
            ((other.local == self.local || other.local == self.visitor) && (other.visitor == self.visitor || other.visitor == self.local) && (other.round == self.round) )
    ```

  * **Line # 19 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
          ((other.local == local || other.local == visitor) && (other.visitor == visitor || other.visitor == local) && (other.round == round))
    ```

  * **Line # 19 - convention:** Layout/LineLength: Line is too long. [136/120]

    ```rb
        ((other.local == local || other.local == visitor) && (other.visitor == visitor || other.visitor == local) && (other.round == round))
    ```

  * **Line # 21 - convention:** Layout/EmptyLinesAroundClassBody: Extra empty line detected at class body end.

    ```rb
     ...
    ```

  * **Line # 21 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

  * **Line # 22 - convention:** Layout/EmptyLines: Extra blank line detected.

    ```rb
     ...
    ```

  * **Line # 22 - convention:** Layout/EmptyLinesAroundClassBody: Extra empty line detected at class body end.

    ```rb
     ...
    ```

  * **Line # 22 - convention:** Layout/TrailingEmptyLines: Final newline missing.

    ```rb
    end
    ```

### models/Prediction.rb - (50 offenses)
  * **Line # 1 - convention:** Naming/FileName: The name of this source file (`Prediction.rb`) should use snake_case.

    ```rb
    require 'active_record'
    ```

  * **Line # 1 - convention:** Style/FrozenStringLiteralComment: Missing frozen string literal comment.

    ```rb
    require 'active_record'
    ```

  * **Line # 3 - convention:** Style/Documentation: Missing top-level documentation comment for `class Prediction`.

    ```rb
    class Prediction < ActiveRecord::Base
    ```

  * **Line # 4 - convention:** Layout/IndentationStyle: Tab detected in indentation.

    ```rb
    	#Una prediccion pertenece a un partido y a un jugador 
    ```

  * **Line # 4 - convention:** Layout/LeadingCommentSpace: Missing space after `#`.

    ```rb
    	#Una prediccion pertenece a un partido y a un jugador 
    ```

  * **Line # 4 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 2 instead of 3).

    ```rb
      # Una prediccion pertenece a un partido y a un jugador
    ```

  * **Line # 4 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 3 instead of 2).

    ```rb
       # Una prediccion pertenece a un partido y a un jugador
    ```

  * **Line # 4 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

    ```rb
    	#Una prediccion pertenece a un partido y a un jugador 
    ```

  * **Line # 5 - convention:** Layout/IndentationStyle: Tab detected in indentation.

    ```rb
    	belongs_to :match
    ```

  * **Line # 5 - convention:** Layout/IndentationWidth: Use 2 (not 1) spaces for indentation.

    ```rb
    	belongs_to :match
    ```

  * **Line # 5 - convention:** Layout/IndentationWidth: Use 2 (not 3) spaces for indentation.

    ```rb
       belongs_to :match
    ```

  * **Line # 6 - convention:** Layout/IndentationStyle: Tab detected in indentation.

    ```rb
    	belongs_to :gambler
    ```

  * **Line # 6 - convention:** Layout/IndentationWidth: Use 2 (not 1) spaces for indentation.

    ```rb
    	belongs_to :gambler
    ```

  * **Line # 6 - convention:** Layout/IndentationWidth: Use 2 (not 3) spaces for indentation.

    ```rb
       belongs_to :gambler
    ```

  * **Line # 7 - convention:** Layout/IndentationStyle: Tab detected in indentation.

    ```rb
    	validates :gambler, uniqueness: {scope: :match, message: "Once prediction per match"}
    ```

  * **Line # 7 - convention:** Layout/IndentationWidth: Use 2 (not 1) spaces for indentation.

    ```rb
    	validates :gambler, uniqueness: {scope: :match, message: "Once prediction per match"}
    ```

  * **Line # 7 - convention:** Layout/IndentationWidth: Use 2 (not 3) spaces for indentation.

    ```rb
       validates :gambler, uniqueness: { scope: :match, message: 'Once prediction per match' }
    ```

  * **Line # 7 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
    	validates :gambler, uniqueness: {scope: :match, message: "Once prediction per match"}
    ```

  * **Line # 7 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
    	validates :gambler, uniqueness: {scope: :match, message: "Once prediction per match"}
    ```

  * **Line # 7 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
    	validates :gambler, uniqueness: {scope: :match, message: "Once prediction per match"}
    ```

  * **Line # 8 - convention:** Layout/IndentationStyle: Tab detected in indentation.

    ```rb
    	validates :team1_goals, comparison: {greater_than: -1}
    ```

  * **Line # 8 - convention:** Layout/IndentationWidth: Use 2 (not 1) spaces for indentation.

    ```rb
    	validates :team1_goals, comparison: {greater_than: -1}
    ```

  * **Line # 8 - convention:** Layout/IndentationWidth: Use 2 (not 3) spaces for indentation.

    ```rb
       validates :team1_goals, comparison: { greater_than: -1 }
    ```

  * **Line # 8 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
    	validates :team1_goals, comparison: {greater_than: -1}
    ```

  * **Line # 8 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
    	validates :team1_goals, comparison: {greater_than: -1}
    ```

  * **Line # 9 - convention:** Layout/IndentationStyle: Tab detected in indentation.

    ```rb
    	validates :team2_goals, comparison: {greater_than: -1}
    ```

  * **Line # 9 - convention:** Layout/IndentationWidth: Use 2 (not 1) spaces for indentation.

    ```rb
    	validates :team2_goals, comparison: {greater_than: -1}
    ```

  * **Line # 9 - convention:** Layout/IndentationWidth: Use 2 (not 3) spaces for indentation.

    ```rb
       validates :team2_goals, comparison: { greater_than: -1 }
    ```

  * **Line # 9 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
    	validates :team2_goals, comparison: {greater_than: -1}
    ```

  * **Line # 9 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
    	validates :team2_goals, comparison: {greater_than: -1}
    ```

  * **Line # 11 - convention:** Layout/IndentationStyle: Tab detected in indentation.

    ```rb
    	def winner()
    ```

  * **Line # 11 - convention:** Layout/IndentationWidth: Use 2 (not 1) spaces for indentation.

    ```rb
    	def winner()
    ```

  * **Line # 11 - convention:** Layout/IndentationWidth: Use 2 (not 3) spaces for indentation.

    ```rb
       def winner
    ```

  * **Line # 11 - convention:** Style/DefWithParentheses: Omit the parentheses in defs when the method doesn't accept any arguments.

    ```rb
    	def winner()
    ```

  * **Line # 12 - convention:** Layout/IndentationWidth: Use 2 (not 6) spaces for indentation.

    ```rb
            if team1_goals > team2_goals
    ```

  * **Line # 13 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
            match.local
    ```

  * **Line # 14 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

    ```rb
            else 
    ```

  * **Line # 15 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
            match.visitor
    ```

  * **Line # 15 - convention:** Style/IfInsideElse: Convert `if` nested inside `else` to `elsif`.

    ```rb
                if team2_goals > team1_goals
    ```

  * **Line # 16 - convention:** Layout/ElseAlignment: Align `else` with `if`.

    ```rb
                  else
    ```

  * **Line # 17 - convention:** Layout/IndentationWidth: Use 2 (not 8) spaces for indentation.

    ```rb
                null
    ```

  * **Line # 18 - warning:** Layout/EndAlignment: `end` at 18, 8 is not aligned with `if` at 12, 4.

    ```rb
            end
    ```

  * **Line # 18 - warning:** Layout/EndAlignment: `end` at 18, 9 is not aligned with `if` at 12, 8.

    ```rb
             end
    ```

  * **Line # 18 - warning:** Layout/EndAlignment: `end` at 18, 10 is not aligned with `if` at 12, 9.

    ```rb
              end
    ```

  * **Line # 19 - warning:** Layout/DefEndAlignment: `end` at 19, 2 is not aligned with `def` at 11, 3.

    ```rb
      end
    ```

  * **Line # 19 - warning:** Layout/DefEndAlignment: `end` at 19, 3 is not aligned with `def` at 11, 2.

    ```rb
       end
    ```

  * **Line # 19 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

    ```rb
                end            
    ```

  * **Line # 21 - warning:** Layout/DefEndAlignment: `end` at 21, 4 is not aligned with `def` at 11, 1.

    ```rb
        end
    ```

  * **Line # 22 - convention:** Layout/EmptyLinesAroundClassBody: Extra empty line detected at class body end.

    ```rb
     ...
    ```

  * **Line # 24 - convention:** Layout/TrailingEmptyLines: 2 trailing blank lines detected.

    ```rb
     ...
    ```

### models/Result.rb - (102 offenses)
  * **Line # 1 - convention:** Naming/FileName: The name of this source file (`Result.rb`) should use snake_case.

    ```rb
    require 'active_record'
    ```

  * **Line # 1 - convention:** Style/FrozenStringLiteralComment: Missing frozen string literal comment.

    ```rb
    require 'active_record'
    ```

  * **Line # 3 - convention:** Style/Documentation: Missing top-level documentation comment for `class Result`.

    ```rb
    class Result < ActiveRecord::Base
    ```

  * **Line # 4 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 4 instead of 2).

    ```rb
        # Un resultado pertenece a un partido y está relacionado con muchas predicciones
    ```

  * **Line # 4 - convention:** Layout/LeadingCommentSpace: Missing space after `#`.

    ```rb
        #Un resultado pertenece a un partido y está relacionado con muchas predicciones 
    ```

  * **Line # 4 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

    ```rb
        #Un resultado pertenece a un partido y está relacionado con muchas predicciones 
    ```

  * **Line # 5 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
        belongs_to :match
    ```

  * **Line # 6 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
        has_many :prediction
    ```

  * **Line # 7 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

  * **Line # 8 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
        validates :match, uniqueness: true, presence: true
    ```

  * **Line # 9 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
        validates :team1_goals, presence: true
    ```

  * **Line # 10 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
        validates :team2_goals,  presence: true
    ```

  * **Line # 10 - convention:** Layout/ExtraSpacing: Unnecessary spacing detected.

    ```rb
        validates :team2_goals,  presence: true
    ```

  * **Line # 11 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
        validates :team1_goals, comparison: {greater_than: -1}
    ```

  * **Line # 11 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        validates :team1_goals, comparison: {greater_than: -1}
    ```

  * **Line # 11 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
        validates :team1_goals, comparison: {greater_than: -1}
    ```

  * **Line # 12 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
        validates :team2_goals, comparison: {greater_than: -1}
    ```

  * **Line # 12 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside { missing.

    ```rb
        validates :team2_goals, comparison: {greater_than: -1}
    ```

  * **Line # 12 - convention:** Layout/SpaceInsideHashLiteralBraces: Space inside } missing.

    ```rb
        validates :team2_goals, comparison: {greater_than: -1}
    ```

  * **Line # 14 - convention:** Layout/EmptyLines: Extra blank line detected.

    ```rb
     ...
    ```

  * **Line # 14 - convention:** Naming/MethodName: Use snake_case for method names.

    ```rb
      def calculatePoints(prediction)
    ```

  * **Line # 15 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
        def calculatePoints(prediction)
    ```

  * **Line # 15 - warning:** Lint/UselessAssignment: Useless assignment to variable - `t1GoalsP`. Did you mean `t1GoalsR`?

    ```rb
        t1GoalsP = prediction.team1_goals
    ```

  * **Line # 15 - convention:** Naming/VariableName: Use snake_case for variable names.

    ```rb
        t1GoalsP = prediction.team1_goals
    ```

  * **Line # 16 - convention:** Layout/IndentationStyle: Tab detected in indentation.

    ```rb
    		t1GoalsP = prediction.team1_goals
    ```

  * **Line # 16 - warning:** Lint/UselessAssignment: Useless assignment to variable - `t2GoalsP`. Did you mean `t2GoalsR`?

    ```rb
        t2GoalsP = prediction.team2_goals
    ```

  * **Line # 16 - convention:** Naming/VariableName: Use snake_case for variable names.

    ```rb
        t2GoalsP = prediction.team2_goals
    ```

  * **Line # 17 - convention:** Layout/IndentationStyle: Tab detected in indentation.

    ```rb
    		t2GoalsP = prediction.team2_goals
    ```

  * **Line # 18 - warning:** Lint/UselessAssignment: Useless assignment to variable - `t1GoalsR`. Did you mean `t1GoalsP`?

    ```rb
        t1GoalsR = team1_goals
    ```

  * **Line # 18 - convention:** Naming/VariableName: Use snake_case for variable names.

    ```rb
        t1GoalsR = team1_goals
    ```

  * **Line # 19 - convention:** Layout/IndentationStyle: Tab detected in indentation.

    ```rb
    		t1GoalsR = self.team1_goals
    ```

  * **Line # 19 - warning:** Lint/UselessAssignment: Useless assignment to variable - `t2GoalsR`. Did you mean `t2GoalsP`?

    ```rb
        t2GoalsR = team2_goals
    ```

  * **Line # 19 - convention:** Naming/VariableName: Use snake_case for variable names.

    ```rb
        t2GoalsR = team2_goals
    ```

  * **Line # 19 - convention:** Style/RedundantSelf: Redundant `self` detected.

    ```rb
    		t1GoalsR = self.team1_goals
    ```

  * **Line # 20 - convention:** Layout/IndentationStyle: Tab detected in indentation.

    ```rb
    		t2GoalsR = self.team2_goals
    ```

  * **Line # 20 - convention:** Style/RedundantSelf: Redundant `self` detected.

    ```rb
    		t2GoalsR = self.team2_goals
    ```

  * **Line # 21 - convention:** Naming/VariableName: Use snake_case for variable names.

    ```rb
        totalPoints = 0
    ```

  * **Line # 22 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
    totalPoints = 0
    ```

  * **Line # 22 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
            totalPoints = 0
    ```

  * **Line # 23 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 0 instead of 4).

    ```rb
    # Si la prediccion fue igual al resultado, son 2 puntos, sino 0
    ```

  * **Line # 24 - convention:** Layout/IndentationStyle: Tab detected in indentation.

    ```rb
    		#Si la prediccion fue igual al resultado, son 2 puntos, sino 0
    ```

  * **Line # 24 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 2 instead of 8).

    ```rb
    		#Si la prediccion fue igual al resultado, son 2 puntos, sino 0
    ```

  * **Line # 24 - convention:** Layout/LeadingCommentSpace: Missing space after `#`.

    ```rb
    		#Si la prediccion fue igual al resultado, son 2 puntos, sino 0
    ```

  * **Line # 24 - convention:** Naming/VariableName: Use snake_case for variable names.

    ```rb
        totalPoints += 2 if winner.name == prediction.winner.name
    ```

  * **Line # 24 - convention:** Style/IfUnlessModifier: Favor modifier `if` usage when having a single-line body. Another good alternative is the usage of control flow `&&`/`||`.

    ```rb
        if winner.name == prediction.winner.name
    ```

  * **Line # 24 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 10 instead of 0).

    ```rb
              # Si la prediccion fue igual al resultado, son 2 puntos, sino 0
    ```

  * **Line # 25 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
    if winner.name == prediction.winner.name ...
    ```

  * **Line # 25 - convention:** Style/IfUnlessModifier: Favor modifier `if` usage when having a single-line body. Another good alternative is the usage of control flow `&&`/`||`.

    ```rb
    if winner.name == prediction.winner.name
    ```

  * **Line # 25 - convention:** Naming/VariableName: Use snake_case for variable names.

    ```rb
        totalPoints += 1 if team1_goals == prediction.team1_goals
    ```

  * **Line # 25 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
            if winner().name == prediction.winner().name ...
    ```

  * **Line # 25 - convention:** Style/IfUnlessModifier: Favor modifier `if` usage when having a single-line body. Another good alternative is the usage of control flow `&&`/`||`.

    ```rb
            if winner().name == prediction.winner().name
    ```

  * **Line # 25 - convention:** Style/MethodCallWithoutArgsParentheses: Do not use parentheses for method calls with no arguments.

    ```rb
            if winner().name == prediction.winner().name
    ```

  * **Line # 25 - convention:** Style/MethodCallWithoutArgsParentheses: Do not use parentheses for method calls with no arguments.

    ```rb
            if winner().name == prediction.winner().name
    ```

  * **Line # 26 - convention:** Layout/IndentationStyle: Tab detected in indentation.

    ```rb
    			totalPoints += 2
    ```

  * **Line # 26 - convention:** Layout/IndentationWidth: Use 2 (not 6) spaces for indentation.

    ```rb
          totalPoints += 2
    ```

  * **Line # 26 - convention:** Naming/VariableName: Use snake_case for variable names.

    ```rb
        totalPoints += 1 if team2_goals == prediction.team2_goals
    ```

  * **Line # 27 - warning:** Layout/EndAlignment: `end` at 27, 2 is not aligned with `if` at 25, 0.

    ```rb
      end
    ```

  * **Line # 27 - convention:** Naming/VariableName: Use snake_case for variable names.

    ```rb
        totalPoints
    ```

  * **Line # 27 - convention:** Style/IfUnlessModifier: Favor modifier `if` usage when having a single-line body. Another good alternative is the usage of control flow `&&`/`||`.

    ```rb
        if team1_goals == prediction.team1_goals
    ```

  * **Line # 28 - convention:** Layout/IndentationStyle: Tab detected in indentation.

    ```rb
    		if team1_goals == prediction.team1_goals
    ```

  * **Line # 28 - convention:** Style/IfUnlessModifier: Favor modifier `if` usage when having a single-line body. Another good alternative is the usage of control flow `&&`/`||`.

    ```rb
    		if team1_goals == prediction.team1_goals
    ```

  * **Line # 28 - convention:** Style/IfUnlessModifier: Favor modifier `if` usage when having a single-line body. Another good alternative is the usage of control flow `&&`/`||`.

    ```rb
        if team1_goals == prediction.team1_goals
    ```

  * **Line # 29 - convention:** Layout/IndentationStyle: Tab detected in indentation.

    ```rb
    			totalPoints += 1
    ```

  * **Line # 30 - warning:** Layout/EndAlignment: `end` at 30, 2 is not aligned with `if` at 28, 4.

    ```rb
      end
    ```

  * **Line # 30 - convention:** Style/IfUnlessModifier: Favor modifier `if` usage when having a single-line body. Another good alternative is the usage of control flow `&&`/`||`.

    ```rb
        if team2_goals == prediction.team2_goals
    ```

  * **Line # 30 - warning:** Layout/EndAlignment: `end` at 30, 8 is not aligned with `if` at 28, 2.

    ```rb
            end
    ```

  * **Line # 31 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
    if team2_goals == prediction.team2_goals ...
    ```

  * **Line # 31 - convention:** Style/IfUnlessModifier: Favor modifier `if` usage when having a single-line body. Another good alternative is the usage of control flow `&&`/`||`.

    ```rb
    if team2_goals == prediction.team2_goals
    ```

  * **Line # 31 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
            if team2_goals == prediction.team2_goals ...
    ```

  * **Line # 31 - convention:** Style/IfUnlessModifier: Favor modifier `if` usage when having a single-line body. Another good alternative is the usage of control flow `&&`/`||`.

    ```rb
            if team2_goals == prediction.team2_goals
    ```

  * **Line # 32 - convention:** Layout/IndentationWidth: Use 2 (not 6) spaces for indentation.

    ```rb
          totalPoints += 1
    ```

  * **Line # 33 - warning:** Layout/EndAlignment: `end` at 33, 2 is not aligned with `if` at 31, 0.

    ```rb
      end
    ```

  * **Line # 33 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

    ```rb
            end 
    ```

  * **Line # 34 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
    totalPoints
    ```

  * **Line # 34 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
            totalPoints
    ```

  * **Line # 37 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
        def winner()
    ```

  * **Line # 37 - convention:** Style/DefWithParentheses: Omit the parentheses in defs when the method doesn't accept any arguments.

    ```rb
        def winner()
    ```

  * **Line # 38 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
          if team1_goals > team2_goals
    ```

  * **Line # 38 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
            match.local
    ```

  * **Line # 40 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
            match.visitor
    ```

  * **Line # 40 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

    ```rb
            else 
    ```

  * **Line # 41 - convention:** Style/IfInsideElse: Convert `if` nested inside `else` to `elsif`.

    ```rb
                if team2_goals > team1_goals
    ```

  * **Line # 42 - convention:** Layout/IndentationWidth: Use 2 (not 8) spaces for indentation.

    ```rb
                null
    ```

  * **Line # 42 - convention:** Layout/ElseAlignment: Align `else` with `if`.

    ```rb
              else
    ```

  * **Line # 45 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
            g1 = p.gambler
    ```

  * **Line # 45 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

    ```rb
                end            
    ```

  * **Line # 46 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
            g1.Total_score = g1.Total_score + points
    ```

  * **Line # 47 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 6 instead of 4).

    ```rb
          # Todas las predicciones de un partido
    ```

  * **Line # 47 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
            g1.save
    ```

  * **Line # 49 - convention:** Layout/EmptyLines: Extra blank line detected.

    ```rb
     ...
    ```

  * **Line # 49 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
          pred = Prediction.where(match: match)
    ```

  * **Line # 49 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
          pred.each do |p| ...
    ```

  * **Line # 50 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
        def change_score
    ```

  * **Line # 50 - convention:** Layout/EmptyLineBetweenDefs: Expected 1 empty line between method definitions; found 2.

    ```rb
        def change_score
    ```

  * **Line # 51 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
              points = calculatePoints(p)
    ```

  * **Line # 51 - convention:** Layout/LeadingCommentSpace: Missing space after `#`.

    ```rb
            #Todas las predicciones de un partido 
    ```

  * **Line # 51 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

    ```rb
            #Todas las predicciones de un partido 
    ```

  * **Line # 52 - convention:** Style/RedundantSelf: Redundant `self` detected.

    ```rb
            pred = Prediction.where(match: self.match)
    ```

  * **Line # 54 - convention:** Style/RedundantSelf: Redundant `self` detected.

    ```rb
                points = self.calculatePoints(p)
    ```

  * **Line # 58 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

    ```rb
            end       
    ```

  * **Line # 59 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

    ```rb
        end    
    ```

  * **Line # 60 - convention:** Layout/TrailingEmptyLines: Final newline missing.

    ```rb
    end
    ```

### models/Team.rb - (11 offenses)
  * **Line # 1 - convention:** Naming/FileName: The name of this source file (`Team.rb`) should use snake_case.

    ```rb
    require 'active_record'
    ```

  * **Line # 1 - convention:** Style/FrozenStringLiteralComment: Missing frozen string literal comment.

    ```rb
    require 'active_record'
    ```

  * **Line # 4 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 4 instead of 2).

    ```rb
        # Un equipo está relacionado con muchos partidos 
    ```

  * **Line # 4 - convention:** Layout/LeadingCommentSpace: Missing space after `#`.

    ```rb
        #Un equipo está relacionado con muchos partidos 
    ```

  * **Line # 4 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

    ```rb
        #Un equipo está relacionado con muchos partidos 
    ```

  * **Line # 4 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

    ```rb
        # Un equipo está relacionado con muchos partidos 
    ```

  * **Line # 5 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
        has_many  :matches, foreign_key: 'local_id', class_name: 'Match'
    ```

  * **Line # 6 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
        validates :name, uniqueness: true
    ```

  * **Line # 7 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
        validates :name, presence: true
    ```

  * **Line # 8 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

    ```rb
    end  
    ```

  * **Line # 8 - convention:** Layout/TrailingEmptyLines: Final newline missing.

    ```rb
    end  
    ```

### models/init.rb - (1 offense)
  * **Line # 1 - convention:** Style/FrozenStringLiteralComment: Missing frozen string literal comment.

    ```rb
    require_relative 'Gambler'
    ```

### server.rb - (162 offenses)
  * **Line # 1 - convention:** Style/FrozenStringLiteralComment: Missing frozen string literal comment.

    ```rb
    require 'bundler/setup'
    ```

  * **Line # 5 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

    ```rb
    require 'sinatra/reloader' if Sinatra::Base.environment == :development  
    ```

  * **Line # 7 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
    require "sinatra/activerecord"
    ```

  * **Line # 13 - convention:** Metrics/ClassLength: Class has too many lines. [233/100]

    ```rb
    class App < Sinatra::Application ...
    ```

  * **Line # 13 - convention:** Style/Documentation: Missing top-level documentation comment for `class App`.

    ```rb
    class App < Sinatra::Application
    ```

  * **Line # 14 - convention:** Layout/EmptyLinesAroundClassBody: Extra empty line detected at class body beginning.

    ```rb
     ...
    ```

  * **Line # 14 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

  * **Line # 19 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
          admin_pages = ["/addResult","/addMatch", "/addTeam", "/admin"]
    ```

  * **Line # 19 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
          admin_pages = ["/addResult","/addMatch", "/addTeam", "/admin"]
    ```

  * **Line # 19 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
          admin_pages = ["/addResult","/addMatch", "/addTeam", "/admin"]
    ```

  * **Line # 19 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
          admin_pages = ["/addResult", "/addMatch", "/addTeam", "/admin"]
    ```

  * **Line # 19 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
          admin_pages = ["/addResult","/addMatch", "/addTeam", "/admin"]
    ```

  * **Line # 19 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
          admin_pages = ["/addResult", "/addMatch", "/addTeam", "/admin"]
    ```

  * **Line # 19 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
          admin_pages = ["/addResult","/addMatch", "/addTeam", "/admin"]
    ```

  * **Line # 19 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
          admin_pages = ["/addResult", "/addMatch", "/addTeam", "/admin"]
    ```

  * **Line # 20 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

  * **Line # 20 - convention:** Style/AndOr: Use `&&` instead of `and`.

    ```rb
          redirect '/matches' if !admin and admin_pages.include?(request.path_info)
    ```

  * **Line # 21 - convention:** Style/IfUnlessModifier: Favor modifier `if` usage when having a single-line body. Another good alternative is the usage of control flow `&&`/`||`.

    ```rb
          if !admin and admin_pages.include?(request.path_info)
    ```

  * **Line # 24 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

  * **Line # 24 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
          public_pages = ["/", "/login", '/signup'] # sacar admin
    ```

  * **Line # 24 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
          public_pages = ["/", "/login", '/signup'] # sacar admin
    ```

  * **Line # 26 - convention:** Style/NegatedIf: Favor `unless` over `if` for negative conditions.

    ```rb
          redirect '/login' if !public_pages.include?(request.path_info)
    ```

  * **Line # 26 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
          public_pages = ["/", "/login",'/signup']#sacar admin
    ```

  * **Line # 26 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
          public_pages = ["/", "/login",'/signup']#sacar admin
    ```

  * **Line # 26 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
          public_pages = ["/", "/login",'/signup']#sacar admin
    ```

  * **Line # 26 - convention:** Layout/LeadingCommentSpace: Missing space after `#`.

    ```rb
          public_pages = ["/", "/login",'/signup']#sacar admin
    ```

  * **Line # 26 - convention:** Layout/SpaceBeforeComment: Put a space before an end-of-line comment.

    ```rb
          public_pages = ["/", "/login",'/signup']#sacar admin
    ```

  * **Line # 28 - convention:** Layout/EmptyLinesAroundBlockBody: Extra empty line detected at block body end.

    ```rb
     ...
    ```

  * **Line # 28 - convention:** Style/IfUnlessModifier: Favor modifier `if` usage when having a single-line body. Another good alternative is the usage of control flow `&&`/`||`.

    ```rb
          if !public_pages.include?(request.path_info)
    ```

  * **Line # 28 - convention:** Style/NegatedIf: Favor `unless` over `if` for negative conditions.

    ```rb
          if !public_pages.include?(request.path_info) ...
    ```

  * **Line # 31 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
          set :session_secret, ENV.fetch('SESSION_SECRET') { SecureRandom.hex(64) }
    ```

  * **Line # 32 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

  * **Line # 32 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
          set :sessions, true
    ```

  * **Line # 32 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
          set :views, File.expand_path('views', __dir__)
    ```

  * **Line # 33 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
        set :session_secret, ENV.fetch('SESSION_SECRET') { SecureRandom.hex(64) }
    ```

  * **Line # 33 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
          set :public_folder, 'public'
    ```

  * **Line # 34 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
        set :views, File.expand_path('views', __dir__)
    ```

  * **Line # 34 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
          register Sinatra::Reloader
    ```

  * **Line # 35 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
        set :public_folder, 'public'
    ```

  * **Line # 35 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
          after_reload do ...
    ```

  * **Line # 36 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
        register Sinatra::Reloader
    ```

  * **Line # 36 - convention:** Layout/IndentationWidth: Use 2 (not 0) spaces for indentation.

    ```rb
        set :sessions, true
    ```

  * **Line # 37 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
        after_reload do ...
    ```

  * **Line # 38 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
          enable :logging
    ```

  * **Line # 38 - convention:** Layout/SpaceBeforeComma: Space found before comma.

    ```rb
        set :views          , File.expand_path('../views', __FILE__)
    ```

  * **Line # 38 - convention:** Style/ExpandPathArguments: Use `expand_path('views', __dir__)` instead of `expand_path('../views', __FILE__)`.

    ```rb
        set :views          , File.expand_path('../views', __FILE__)
    ```

  * **Line # 39 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
          enable :sessions
    ```

  * **Line # 40 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
        enable :logging
    ```

  * **Line # 41 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
        enable :sessions
    ```

  * **Line # 41 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
          logger = Logger.new(STDOUT)
    ```

  * **Line # 41 - convention:** Style/GlobalStdStream: Use `$stdout` instead of `STDOUT`.

    ```rb
        logger = Logger.new(STDOUT)
    ```

  * **Line # 42 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
          logger.level = Logger::DEBUG if development?
    ```

  * **Line # 43 - convention:** Layout/EmptyLines: Extra blank line detected.

    ```rb
     ...
    ```

  * **Line # 43 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
          set :logger, logger
    ```

  * **Line # 44 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
        logger = Logger.new(STDOUT)
    ```

  * **Line # 45 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
        logger.level = Logger::DEBUG if development?
    ```

  * **Line # 46 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

  * **Line # 46 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
        set :logger, logger
    ```

  * **Line # 47 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

  * **Line # 51 - convention:** Layout/EmptyLinesAroundBlockBody: Extra empty line detected at block body end.

    ```rb
     ...
    ```

  * **Line # 52 - convention:** Layout/BlockAlignment: `end` at 52, 4 is not aligned with `configure :development do` at 35, 2.

    ```rb
        end
    ```

  * **Line # 54 - convention:** Layout/EmptyLinesAroundBlockBody: Extra empty line detected at block body beginning.

    ```rb
     ...
    ```

  * **Line # 54 - warning:** Lint/UnusedMethodArgument: Unused method argument - `app`. If it's necessary, use `_` or `_app` as an argument name to indicate that it won't be used. You can also write as `initialize(*)` if you want the method to accept any arguments but don't care about them.

    ```rb
      def initialize(app = nil)
    ```

  * **Line # 58 - convention:** Layout/EmptyLines: Extra blank line detected.

    ```rb
     ...
    ```

  * **Line # 60 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

  * **Line # 62 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

    ```rb
        erb :matches        
    ```

  * **Line # 64 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

  * **Line # 65 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t1.name = "Irlana"
    ```

  * **Line # 67 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t2.name = "Gales"
    ```

  * **Line # 68 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

  * **Line # 71 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t1.name = "Irlana"
    ```

  * **Line # 73 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        t2.name = "Gales"
    ```

  * **Line # 80 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        "Aguante boca"
    ```

  * **Line # 80 - convention:** Style/DoubleNegation: Avoid the use of double negation (`!!`).

    ```rb
        @log = !!session[:gambler_id]
    ```

  * **Line # 85 - convention:** Layout/LeadingCommentSpace: Missing space after `#`.

    ```rb
        #r1.save
    ```

  * **Line # 85 - convention:** Style/DoubleNegation: Avoid the use of double negation (`!!`).

    ```rb
        redirect '/' if !!session[:gambler_id]
    ```

  * **Line # 86 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        "Aguante boca"
    ```

  * **Line # 89 - convention:** Layout/EmptyLines: Extra blank line detected.

    ```rb
     ...
    ```

  * **Line # 89 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        redirect "/" if !!session[:gambler_id]
    ```

  * **Line # 96 - convention:** Style/IfUnlessModifier: Favor modifier `if` usage when having a single-line body. Another good alternative is the usage of control flow `&&`/`||`.

    ```rb
        if !!session[:gambler_id]
    ```

  * **Line # 97 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
          redirect "/"
    ```

  * **Line # 99 - convention:** Style/HashSyntax: Use the new Ruby 1.9 hash syntax.

    ```rb
        erb :login, :layout => :layout
    ```

  * **Line # 101 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
          flash[:notice] = "Bienvenido."
    ```

  * **Line # 102 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
          redirect to "/matches"
    ```

  * **Line # 103 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

    ```rb
        json = request.params 
    ```

  * **Line # 104 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
          flash[:alert] = "Contraseña o usuario incorrectos."
    ```

  * **Line # 106 - convention:** Style/DoubleNegation: Avoid the use of double negation (`!!`).

    ```rb
        redirect '/' if !!session[:gambler_id]
    ```

  * **Line # 110 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        redirect "/" if !!session[:gambler_id]
    ```

  * **Line # 110 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
          flash[:notice] = "Bienvenido."
    ```

  * **Line # 111 - warning:** Lint/UselessAssignment: Useless assignment to variable - `g1`.

    ```rb
        g1 = Gambler.new
    ```

  * **Line # 111 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
          redirect to "/matches"
    ```

  * **Line # 113 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
          flash[:alert] = "Contraseña o usuario incorrectos."
    ```

  * **Line # 119 - convention:** Style/IfUnlessModifier: Favor modifier `if` usage when having a single-line body. Another good alternative is the usage of control flow `&&`/`||`.

    ```rb
        if !!session[:gambler_id]
    ```

  * **Line # 120 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
          redirect "/"
    ```

  * **Line # 125 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
          flash[:notice] = "Gracias por registrarte!!!"
    ```

  * **Line # 126 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
          redirect to "/login"
    ```

  * **Line # 128 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
          flash[:alert] = "Las contraseñas no coinciden"
    ```

  * **Line # 129 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
          redirect to "/signup"
    ```

  * **Line # 131 - convention:** Layout/SpaceAroundOperators: Surrounding space missing for operator `=`.

    ```rb
          g1.password=(json['password'])
    ```

  * **Line # 136 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
          flash[:notice] = "Gracias por registrarte!!!"
    ```

  * **Line # 137 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
          redirect to "/login"
    ```

  * **Line # 137 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        flash[:notice] = "Hasta luego."
    ```

  * **Line # 138 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        redirect to "/"
    ```

  * **Line # 139 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
          flash[:alert] = "Las contraseñas no coinciden"
    ```

  * **Line # 140 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
          redirect to "/signup"
    ```

  * **Line # 148 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        flash[:notice] = "Hasta luego."
    ```

  * **Line # 149 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        redirect to "/"
    ```

  * **Line # 150 - convention:** Style/For: Prefer `each` over `for`.

    ```rb
        for index in 0..size - 1 do ...
    ```

  * **Line # 155 - convention:** Layout/ArgumentAlignment: Align the arguments of a method call if they span more than one line.

    ```rb
                                                                        team1_goals: json['p'][index]['team1_goals'], team2_goals: json['p'][index]['team2_goals'])
    ```

  * **Line # 155 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                                                                        team1_goals: json['p'][index]['team1_goals'], team2_goals: json['p'][index]['team2_goals'])
    ```

  * **Line # 155 - convention:** Layout/LineLength: Line is too long. [125/120]

    ```rb
                                      team1_goals: json['p'][index]['team1_goals'], team2_goals: json['p'][index]['team2_goals'])
    ```

  * **Line # 156 - convention:** Layout/EmptyLineAfterGuardClause: Add empty line after guard clause.

    ```rb
          next unless json['p'][index]['team1_goals'] != "" && json['p'][index]['team2_goals'] != ""
    ```

  * **Line # 156 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
          next unless json['p'][index]['team1_goals'] != "" && json['p'][index]['team2_goals'] != ""
    ```

  * **Line # 156 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
          next unless json['p'][index]['team1_goals'] != "" && json['p'][index]['team2_goals'] != ""
    ```

  * **Line # 157 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

    ```rb
          prediction = Prediction.new(match_id: json['p'][index]['id'].to_i, 
    ```

  * **Line # 158 - convention:** Layout/ArgumentAlignment: Align the arguments of a method call if they span more than one line.

    ```rb
    team1_goals: json['p'][index]['team1_goals'], team2_goals: json['p'][index]['team2_goals'])
    ```

  * **Line # 158 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
    team1_goals: json['p'][index]['team1_goals'], team2_goals: json['p'][index]['team2_goals'])
    ```

  * **Line # 164 - convention:** Style/IdenticalConditionalBranches: Move `redirect to '/score'` out of the conditional.

    ```rb
          redirect to '/score'
    ```

  * **Line # 165 - convention:** Layout/SpaceAroundOperators: Surrounding space missing for operator `-`.

    ```rb
        for index in 0..size-1 do
    ```

  * **Line # 166 - convention:** Naming/VariableName: Use snake_case for variable names.

    ```rb
          cantPred = gambler.prediction.size - cant
    ```

  * **Line # 166 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
          flash[:alert] = "No se realizo ninguna prediccion."
    ```

  * **Line # 167 - convention:** Style/Next: Use `next` to skip iteration.

    ```rb
          if json['p'][index]['team1_goals'] != "" && json['p'][index]['team2_goals'] != ""
    ```

  * **Line # 167 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
          redirect to "/score"
    ```

  * **Line # 167 - convention:** Naming/VariableName: Use snake_case for variable names.

    ```rb
          flash[:notice] = "Se realizaron #{cantPred} predicciones"
    ```

  * **Line # 167 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
          if json['p'][index]['team1_goals'] != "" && json['p'][index]['team2_goals'] != ""
    ```

  * **Line # 167 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
          if json['p'][index]['team1_goals'] != "" && json['p'][index]['team2_goals'] != ""
    ```

  * **Line # 168 - convention:** Style/IdenticalConditionalBranches: Move `redirect to '/score'` out of the conditional.

    ```rb
          redirect to '/score'
    ```

  * **Line # 168 - convention:** Layout/LineLength: Line is too long. [166/120]

    ```rb
            prediction = Prediction.new(match_id: json['p'][index]['id'].to_i, team1_goals: json['p'][index]['team1_goals'], team2_goals: json['p'][index]['team2_goals'])
    ```

  * **Line # 171 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
          redirect to "/score"
    ```

  * **Line # 173 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

    ```rb
            gambler.save  
    ```

  * **Line # 177 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
          flash[:alert] = "No se realizo ninguna prediccion."
    ```

  * **Line # 178 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
          redirect to "/score"
    ```

  * **Line # 182 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
          redirect to "/score"
    ```

  * **Line # 202 - convention:** Style/HashSyntax: Use the new Ruby 1.9 hash syntax.

    ```rb
        erb :editUser, :layout => :layout
    ```

  * **Line # 204 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
            flash[:notice] = "Contraseña cambiada con exito."
    ```

  * **Line # 205 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
            redirect to "/"
    ```

  * **Line # 207 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
            flash[:alert] = "Las contraseñas no coinciden."
    ```

  * **Line # 208 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
            redirect to "/editUser"
    ```

  * **Line # 210 - convention:** Layout/ExtraSpacing: Unnecessary spacing detected.

    ```rb
        if  BCrypt::Password.new(gambler.password) == json['currentPassword']
    ```

  * **Line # 211 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
          flash[:alert] = "Contraseña Incorrecta"
    ```

  * **Line # 214 - convention:** Layout/EmptyLinesAroundBlockBody: Extra empty line detected at block body end.

    ```rb
     ...
    ```

  * **Line # 215 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
            flash[:notice] = "Contraseña cambiada con exito."
    ```

  * **Line # 216 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
            redirect to "/"
    ```

  * **Line # 218 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
            flash[:alert] = "Las contraseñas no coinciden."
    ```

  * **Line # 219 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
            redirect to "/editUser"
    ```

  * **Line # 222 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
          flash[:alert] = "Contraseña Incorrecta"
    ```

  * **Line # 225 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

  * **Line # 228 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

    ```rb
      post '/addTeam' do 
    ```

  * **Line # 240 - convention:** Style/For: Prefer `each` over `for`.

    ```rb
        for index in 0..size - 1 do ...
    ```

  * **Line # 243 - convention:** Layout/ArgumentAlignment: Align the arguments of a method call if they span more than one line.

    ```rb
                                                        team2_goals: json['p'][index]['team2_goals'])
    ```

  * **Line # 243 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
                                                        team2_goals: json['p'][index]['team2_goals'])
    ```

  * **Line # 246 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

    ```rb
          result = Result.new(match_id: json['p'][index]['id'].to_i, team1_goals: json['p'][index]['team1_goals'], 
    ```

  * **Line # 247 - convention:** Layout/ArgumentAlignment: Align the arguments of a method call if they span more than one line.

    ```rb
    team2_goals: json['p'][index]['team2_goals'])
    ```

  * **Line # 247 - convention:** Layout/HashAlignment: Align the keys of a hash literal if they span more than one line.

    ```rb
    team2_goals: json['p'][index]['team2_goals'])
    ```

  * **Line # 250 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

  * **Line # 251 - convention:** Layout/EmptyLines: Extra blank line detected.

    ```rb
     ...
    ```

  * **Line # 252 - convention:** Layout/EmptyLines: Extra blank line detected.

    ```rb
     ...
    ```

  * **Line # 255 - convention:** Layout/SpaceAroundOperators: Surrounding space missing for operator `-`.

    ```rb
        for index in 0..size-1 do
    ```

  * **Line # 257 - convention:** Layout/LineLength: Line is too long. [156/120]

    ```rb
          result = Result.new(match_id: json['p'][index]['id'].to_i, team1_goals: json['p'][index]['team1_goals'], team2_goals: json['p'][index]['team2_goals'])
    ```

  * **Line # 261 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

  * **Line # 263 - convention:** Layout/EmptyLines: Extra blank line detected.

    ```rb
     ...
    ```

  * **Line # 280 - convention:** Style/MethodCallWithoutArgsParentheses: Do not use parentheses for method calls with no arguments.

    ```rb
          g.statistics()
    ```

### spec/spec_helper.rb - (2 offenses)
  * **Line # 1 - convention:** Style/FrozenStringLiteralComment: Missing frozen string literal comment.

    ```rb
    require 'sinatra/base'
    ```

  * **Line # 9 - convention:** Style/ExpandPathArguments: Use `expand_path('../config/environment.rb', __dir__)` instead of `expand_path('../../config/environment.rb', __FILE__)`.

    ```rb
    require File.expand_path('../../config/environment.rb', __FILE__)
    ```

### spec/test/test_Gambler_spec.rb - (36 offenses)
  * **Line # 1 - convention:** Naming/FileName: The name of this source file (`test_Gambler_spec.rb`) should use snake_case.

    ```rb
    require_relative '../../models/init'
    ```

  * **Line # 1 - convention:** Style/FrozenStringLiteralComment: Missing frozen string literal comment.

    ```rb
    require_relative '../../models/init'
    ```

  * **Line # 1 - convention:** Style/RedundantFileExtensionInRequire: Redundant `.rb` file extension detected.

    ```rb
    require_relative '../../models/init.rb'
    ```

  * **Line # 3 - convention:** Metrics/BlockLength: Block has too many lines. [28/25]

    ```rb
    describe '#Gambler' do ...
    ```

  * **Line # 4 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
        let(:user) {Gambler.create(name: 'U1', Email: 'U@gmail.com')}
    ```

  * **Line # 4 - convention:** Layout/SpaceInsideBlockBraces: Space missing inside {.

    ```rb
        let(:user) {Gambler.create(name: 'U1', Email: 'U@gmail.com')}
    ```

  * **Line # 4 - convention:** Layout/SpaceInsideBlockBraces: Space missing inside }.

    ```rb
        let(:user) {Gambler.create(name: 'U1', Email: 'U@gmail.com')}
    ```

  * **Line # 5 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
        describe 'load new gambler' do ...
    ```

  * **Line # 6 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
            it ' should return true' do
    ```

  * **Line # 7 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
              user2 = Gambler.new(name: 'U2', Email: 'U2@gmail.com')
    ```

  * **Line # 7 - warning:** Lint/UselessAssignment: Useless assignment to variable - `user2`. Did you mean `user`?

    ```rb
          user2 = Gambler.new(name: 'U2', Email: 'U2@gmail.com')
    ```

  * **Line # 8 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
            expect(user.valid?).to eq true
    ```

  * **Line # 11 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
          it 'should return false, name already exists' do ...
    ```

  * **Line # 12 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
                user2 = Gambler.new(name: 'U1', Email: 'U2@gmail.com')
    ```

  * **Line # 13 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
            expect(user2.valid?).to eq false
    ```

  * **Line # 15 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
          it 'should return false, email already exists' do ...
    ```

  * **Line # 16 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
                user2 = Gambler.new(name: 'U2', Email: 'U@gmail.com')
    ```

  * **Line # 17 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
            expect(user2.valid?).to eq false
    ```

  * **Line # 19 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
          it 'should return false, name not found' do ...
    ```

  * **Line # 20 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
                user2 = Gambler.new(Email: 'U2@gmail.com')
    ```

  * **Line # 21 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
            expect(user2.valid?).to eq false
    ```

  * **Line # 23 - convention:** Layout/EmptyLinesAroundBlockBody: Extra empty line detected at block body end.

    ```rb
     ...
    ```

  * **Line # 24 - convention:** Layout/EmptyLines: Extra blank line detected.

    ```rb
     ...
    ```

  * **Line # 24 - convention:** Layout/EmptyLinesAroundBlockBody: Extra empty line detected at block body end.

    ```rb
     ...
    ```

  * **Line # 25 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
        describe 'create_prediction method' do ...
    ```

  * **Line # 25 - convention:** Naming/VariableNumber: Use normalcase for symbol numbers.

    ```rb
        let(:team_1) { Team.new(name: 'T3') }
    ```

  * **Line # 26 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
          let(:team_2) { Team.new(name: 'T4') }
    ```

  * **Line # 26 - convention:** Naming/VariableNumber: Use normalcase for symbol numbers.

    ```rb
        let(:team_2) { Team.new(name: 'T4') }
    ```

  * **Line # 27 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
            let(:team_1) { Team.new(name: 'T3') }
    ```

  * **Line # 27 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
          let(:match) { Match.new(local: team_1, visitor: team_2, round: 1) }
    ```

  * **Line # 28 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
          it 'should return true' do ...
    ```

  * **Line # 28 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

    ```rb
            let(:team_2) { Team.new(name: 'T4') }     
    ```

  * **Line # 30 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
            expect(pred.valid?).to eq true
    ```

  * **Line # 31 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
                pred = user.create_prediction(match, 1, 0)
    ```

  * **Line # 32 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

    ```rb
                expect(pred.valid?).to eq true         
    ```

  * **Line # 35 - convention:** Layout/TrailingEmptyLines: Final newline missing.

    ```rb
    end
    ```

### spec/test/test_Match_spec.rb - (72 offenses)
  * **Line # 1 - convention:** Naming/FileName: The name of this source file (`test_Match_spec.rb`) should use snake_case.

    ```rb
    require_relative '../../models/init'
    ```

  * **Line # 1 - convention:** Style/FrozenStringLiteralComment: Missing frozen string literal comment.

    ```rb
    require_relative '../../models/init'
    ```

  * **Line # 1 - convention:** Style/RedundantFileExtensionInRequire: Redundant `.rb` file extension detected.

    ```rb
    require_relative '../../models/init.rb'
    ```

  * **Line # 3 - convention:** Layout/LeadingCommentSpace: Missing space after `#`.

    ```rb
    #Test
    ```

  * **Line # 4 - convention:** Metrics/BlockLength: Block has too many lines. [36/25]

    ```rb
    describe 'Match' do ...
    ```

  * **Line # 5 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
        describe "valid" do
    ```

  * **Line # 5 - convention:** Metrics/BlockLength: Block has too many lines. [34/25]

    ```rb
      describe 'valid' do ...
    ```

  * **Line # 5 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
        describe "valid" do
    ```

  * **Line # 6 - convention:** Layout/EmptyLinesAroundBlockBody: Extra empty line detected at block body beginning.

    ```rb
     ...
    ```

  * **Line # 6 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

  * **Line # 6 - convention:** Naming/VariableNumber: Use normalcase for symbol numbers.

    ```rb
        let!(:team_1) { Team.create(name: 'nigeria') }
    ```

  * **Line # 7 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
          let!(:team_1) { Team.create(name: 'nigeria') }
    ```

  * **Line # 7 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
          let!(:team_2) { Team.create(name: 'argentina') }
    ```

  * **Line # 7 - convention:** Naming/VariableNumber: Use normalcase for symbol numbers.

    ```rb
        let!(:team_2) { Team.create(name: 'argentina') }
    ```

  * **Line # 7 - convention:** Layout/SpaceInsideBlockBraces: Space missing inside {.

    ```rb
            let!(:team_1) {Team.create(name: 'nigeria')}
    ```

  * **Line # 7 - convention:** Layout/SpaceInsideBlockBraces: Space missing inside }.

    ```rb
            let!(:team_1) {Team.create(name: 'nigeria')}
    ```

  * **Line # 8 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
          let!(:team_3) { Team.create(name: 'italia') }
    ```

  * **Line # 8 - convention:** Naming/VariableNumber: Use normalcase for symbol numbers.

    ```rb
        let!(:team_3) { Team.create(name: 'italia') }
    ```

  * **Line # 8 - convention:** Layout/SpaceInsideBlockBraces: Space missing inside {.

    ```rb
            let!(:team_2) {Team.create(name: 'argentina')}
    ```

  * **Line # 8 - convention:** Layout/SpaceInsideBlockBraces: Space missing inside }.

    ```rb
            let!(:team_2) {Team.create(name: 'argentina')}
    ```

  * **Line # 9 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
          let!(:team_4) { Team.create(name: 'irak') }
    ```

  * **Line # 9 - convention:** Naming/VariableNumber: Use normalcase for symbol numbers.

    ```rb
        let!(:team_4) { Team.create(name: 'irak') }
    ```

  * **Line # 9 - convention:** Layout/SpaceInsideBlockBraces: Space missing inside {.

    ```rb
            let!(:team_3) {Team.create(name: 'italia')}
    ```

  * **Line # 9 - convention:** Layout/SpaceInsideBlockBraces: Space missing inside }.

    ```rb
            let!(:team_3) {Team.create(name: 'italia')}
    ```

  * **Line # 10 - convention:** Layout/SpaceInsideBlockBraces: Space missing inside {.

    ```rb
            let!(:team_4) {Team.create(name: 'irak')}
    ```

  * **Line # 10 - convention:** Layout/SpaceInsideBlockBraces: Space missing inside }.

    ```rb
            let!(:team_4) {Team.create(name: 'irak')}
    ```

  * **Line # 11 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
          let!(:date) { DateTime.new(2022, 12, 3, 12, 10) }
    ```

  * **Line # 12 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
          let!(:valid_match) { Match.create(local: team_1, visitor: team_2, round: 4, datetime: date) }
    ```

  * **Line # 12 - convention:** Layout/SpaceBeforeBlockBraces: Space missing to the left of {.

    ```rb
            let!(:date){DateTime.new(2022,12,3,12,10)}
    ```

  * **Line # 12 - convention:** Layout/SpaceInsideBlockBraces: Space missing inside {.

    ```rb
            let!(:date){DateTime.new(2022,12,3,12,10)}
    ```

  * **Line # 12 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            let!(:date){DateTime.new(2022,12,3,12,10)}
    ```

  * **Line # 12 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            let!(:date){DateTime.new(2022,12,3,12,10)}
    ```

  * **Line # 12 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            let!(:date){DateTime.new(2022,12,3,12,10)}
    ```

  * **Line # 12 - convention:** Layout/SpaceAfterComma: Space missing after comma.

    ```rb
            let!(:date){DateTime.new(2022,12,3,12,10)}
    ```

  * **Line # 12 - convention:** Layout/SpaceInsideBlockBraces: Space missing inside }.

    ```rb
            let!(:date){DateTime.new(2022,12,3,12,10)}
    ```

  * **Line # 13 - convention:** Layout/SpaceInsideBlockBraces: Space missing inside {.

    ```rb
            let!(:valid_match) {Match.create(local: team_1, visitor: team_2, round: 4, datetime: date)}    
    ```

  * **Line # 13 - convention:** Layout/SpaceInsideBlockBraces: Space missing inside }.

    ```rb
            let!(:valid_match) {Match.create(local: team_1, visitor: team_2, round: 4, datetime: date)}    
    ```

  * **Line # 13 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

    ```rb
            let!(:valid_match) {Match.create(local: team_1, visitor: team_2, round: 4, datetime: date)}    
    ```

  * **Line # 14 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

  * **Line # 14 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
          describe 'when there is valid' do ...
    ```

  * **Line # 16 - convention:** Layout/EmptyLinesAroundBlockBody: Extra empty line detected at block body beginning.

    ```rb
     ...
    ```

  * **Line # 16 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

  * **Line # 16 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
                match = Match.new(local_id: 3, visitor_id: 4, round: 2, datetime: date)
    ```

  * **Line # 17 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
              it 'Add a new match in db' do
    ```

  * **Line # 17 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
              valid = match.valid?
    ```

  * **Line # 17 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
                it "Add a new match in db" do
    ```

  * **Line # 18 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
              puts(match.errors.inspect)
    ```

  * **Line # 18 - convention:** Layout/SpaceAfterColon: Space missing after colon.

    ```rb
                    match = Match.new(local_id: 3, visitor_id: 4, round:2, datetime: date)
    ```

  * **Line # 19 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
              expect(valid).to eq(true)
    ```

  * **Line # 22 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
            it 'Add duplicated match but in diferent round' do ...
    ```

  * **Line # 24 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
              expect(match.valid?).to eq(true)
    ```

  * **Line # 24 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
                it "Add duplicated match but in diferent round" do
    ```

  * **Line # 25 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
                  match = Match.new(local_id: 1, visitor_id: 2, round: 2, datetime: date)
    ```

  * **Line # 28 - convention:** Layout/EmptyLinesAroundBlockBody: Extra empty line detected at block body end.

    ```rb
     ...
    ```

  * **Line # 28 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

  * **Line # 28 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
          describe 'when there is invalid' do ...
    ```

  * **Line # 30 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
                inv_match = Match.new(local_id: 1, visitor_id: 2, round: 4, datetime: date)
    ```

  * **Line # 31 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
              expect(inv_match.valid?).to eq(false)
    ```

  * **Line # 32 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
              it 'Add duplicated match in db' do
    ```

  * **Line # 32 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
                it "Add duplicated match in db" do
    ```

  * **Line # 34 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
            it 'Add match without round' do ...
    ```

  * **Line # 36 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
              valid = match.valid?
    ```

  * **Line # 37 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
              expect(valid).to eq(false)
    ```

  * **Line # 37 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
                it "Add match without round" do
    ```

  * **Line # 38 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
                  match = Match.new(local_id: 1, visitor_id: 4, datetime: date)
    ```

  * **Line # 40 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
            it 'Add match without one team' do ...
    ```

  * **Line # 42 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
              valid = match.valid?
    ```

  * **Line # 43 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
              expect(valid).to eq(false)
    ```

  * **Line # 43 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
                it "Add match without one team" do
    ```

  * **Line # 44 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
                  match = Match.new(local_id: 1, round: 3, datetime: date)
    ```

  * **Line # 44 - convention:** Layout/ExtraSpacing: Unnecessary spacing detected.

    ```rb
                    match = Match.new(local_id: 1,  round: 3, datetime: date)
    ```

  * **Line # 50 - convention:** Layout/TrailingEmptyLines: Final newline missing.

    ```rb
    end
    ```

### spec/test/test_Prediction_spec.rb - (70 offenses)
  * **Line # 1 - convention:** Naming/FileName: The name of this source file (`test_Prediction_spec.rb`) should use snake_case.

    ```rb
    require_relative '../../models/init'
    ```

  * **Line # 1 - convention:** Style/FrozenStringLiteralComment: Missing frozen string literal comment.

    ```rb
    require_relative '../../models/init'
    ```

  * **Line # 1 - convention:** Style/RedundantFileExtensionInRequire: Redundant `.rb` file extension detected.

    ```rb
    require_relative '../../models/init.rb'
    ```

  * **Line # 3 - convention:** Layout/LeadingCommentSpace: Missing space after `#`.

    ```rb
    #Test
    ```

  * **Line # 5 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
        let(:team_1) { Team.new(name: 'T1') }
    ```

  * **Line # 5 - convention:** Naming/VariableNumber: Use normalcase for symbol numbers.

    ```rb
      let(:team_1) { Team.new(name: 'T1') }
    ```

  * **Line # 6 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
        let(:team_2) { Team.new(name: 'T2') }
    ```

  * **Line # 6 - convention:** Naming/VariableNumber: Use normalcase for symbol numbers.

    ```rb
      let(:team_2) { Team.new(name: 'T2') }
    ```

  * **Line # 6 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

    ```rb
        let(:team_2) { Team.new(name: 'T2') } 
    ```

  * **Line # 7 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
        let(:match) { Match.new(local: team_1, visitor: team_2, round: 1) }
    ```

  * **Line # 8 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
        let(:user) { Gambler.create(name: 'G1', Email: 'g@gmail.com') }
    ```

  * **Line # 8 - convention:** Layout/SpaceInsideBlockBraces: Space missing inside {.

    ```rb
        let(:user) {Gambler.create(name: 'G1', Email: 'g@gmail.com')}
    ```

  * **Line # 8 - convention:** Layout/SpaceInsideBlockBraces: Space missing inside }.

    ```rb
        let(:user) {Gambler.create(name: 'G1', Email: 'g@gmail.com')}
    ```

  * **Line # 10 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
      describe "valid" do ...
    ```

  * **Line # 10 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
        describe 'valid' do ...
    ```

  * **Line # 10 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
      describe "valid" do
    ```

  * **Line # 11 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
            describe 'when there is no prediction' do
    ```

  * **Line # 12 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
            it 'should be valid' do
    ```

  * **Line # 12 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
              it 'should be valid' do
    ```

  * **Line # 12 - convention:** Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.

    ```rb
                it "should be valid" do
    ```

  * **Line # 13 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 0 instead of 1).

    ```rb
    #                g1 = Gambler.create(name: 'Sebastian',Email: 'sevilla@gmail.com',Total_score: 0)
    ```

  * **Line # 13 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 0 instead of 10).

    ```rb
    #                g1 = Gambler.create(name: 'Sebastian',Email: 'sevilla@gmail.com',Total_score: 0)
    ```

  * **Line # 13 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 0 instead of 2).

    ```rb
    #                g1 = Gambler.create(name: 'Sebastian',Email: 'sevilla@gmail.com',Total_score: 0)
    ```

  * **Line # 13 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 0 instead of 3).

    ```rb
    #                g1 = Gambler.create(name: 'Sebastian',Email: 'sevilla@gmail.com',Total_score: 0)
    ```

  * **Line # 13 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 2 instead of 0).

    ```rb
      #                g1 = Gambler.create(name: 'Sebastian',Email: 'sevilla@gmail.com',Total_score: 0)
    ```

  * **Line # 13 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 2 instead of 1).

    ```rb
      #                g1 = Gambler.create(name: 'Sebastian',Email: 'sevilla@gmail.com',Total_score: 0)
    ```

  * **Line # 13 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 3 instead of 0).

    ```rb
       #                g1 = Gambler.create(name: 'Sebastian',Email: 'sevilla@gmail.com',Total_score: 0)
    ```

  * **Line # 13 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 3 instead of 4).

    ```rb
       #                g1 = Gambler.create(name: 'Sebastian',Email: 'sevilla@gmail.com',Total_score: 0)
    ```

  * **Line # 13 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 10 instead of 8).

    ```rb
              #                g1 = Gambler.create(name: 'Sebastian',Email: 'sevilla@gmail.com',Total_score: 0)
    ```

  * **Line # 14 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 0 instead of 10).

    ```rb
    #               t1 = Team.create(name: 'nigeria')
    ```

  * **Line # 14 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 0 instead of 3).

    ```rb
    #               t1 = Team.create(name: 'nigeria')
    ```

  * **Line # 14 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 1 instead of 2).

    ```rb
     #               t1 = Team.create(name: 'nigeria')
    ```

  * **Line # 14 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 2 instead of 1).

    ```rb
      #               t1 = Team.create(name: 'nigeria')
    ```

  * **Line # 14 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 3 instead of 0).

    ```rb
       #               t1 = Team.create(name: 'nigeria')
    ```

  * **Line # 14 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 4 instead of 3).

    ```rb
        #               t1 = Team.create(name: 'nigeria')
    ```

  * **Line # 14 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 10 instead of 8).

    ```rb
              #               t1 = Team.create(name: 'nigeria')
    ```

  * **Line # 15 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 0 instead of 10).

    ```rb
    #              t2 = Team.create(name: 'argentina')
    ```

  * **Line # 15 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 1 instead of 3).

    ```rb
     #              t2 = Team.create(name: 'argentina')
    ```

  * **Line # 15 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 2 instead of 3).

    ```rb
      #              t2 = Team.create(name: 'argentina')
    ```

  * **Line # 15 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 3 instead of 0).

    ```rb
       #              t2 = Team.create(name: 'argentina')
    ```

  * **Line # 15 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 3 instead of 4).

    ```rb
       #              t2 = Team.create(name: 'argentina')
    ```

  * **Line # 15 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 10 instead of 8).

    ```rb
              #              t2 = Team.create(name: 'argentina')
    ```

  * **Line # 16 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 0 instead of 10).

    ```rb
    #             m1 = Match(local: t1,visitor: t2)
    ```

  * **Line # 16 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 3 instead of 2).

    ```rb
       #             m1 = Match(local: t1,visitor: t2)
    ```

  * **Line # 16 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 3 instead of 4).

    ```rb
       #             m1 = Match(local: t1,visitor: t2)
    ```

  * **Line # 16 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 3 instead of 5).

    ```rb
       #             m1 = Match(local: t1,visitor: t2)
    ```

  * **Line # 16 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 4 instead of 5).

    ```rb
        #             m1 = Match(local: t1,visitor: t2)
    ```

  * **Line # 17 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 2 instead of 12).

    ```rb
      #            p1 = Prediction.create(match: m1,gambler: g1,team1_goals: 1,team2_goals: 2)
    ```

  * **Line # 17 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 4 instead of 5).

    ```rb
        #            p1 = Prediction.create(match: m1,gambler: g1,team1_goals: 1,team2_goals: 2)
    ```

  * **Line # 17 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 5 instead of 4).

    ```rb
         #            p1 = Prediction.create(match: m1,gambler: g1,team1_goals: 1,team2_goals: 2)
    ```

  * **Line # 17 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 5 instead of 7).

    ```rb
         #            p1 = Prediction.create(match: m1,gambler: g1,team1_goals: 1,team2_goals: 2)
    ```

  * **Line # 18 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 4 instead of 14).

    ```rb
        #           g1.addPrediction(p1)
    ```

  * **Line # 18 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 5 instead of 7).

    ```rb
         #           g1.addPrediction(p1)
    ```

  * **Line # 18 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 7 instead of 6).

    ```rb
           #           g1.addPrediction(p1)
    ```

  * **Line # 19 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 6 instead of 16).

    ```rb
          #         r1 = Result.create(match: m1,team1_goals:1,team2_goals: 2)
    ```

  * **Line # 19 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 7 instead of 6).

    ```rb
           #         r1 = Result.create(match: m1,team1_goals:1,team2_goals: 2)
    ```

  * **Line # 20 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 6 instead of 16).

    ```rb
          #         p1.changeScore()
    ```

  * **Line # 20 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 10 instead of 8).

    ```rb
              #         p1.changeScore()
    ```

  * **Line # 21 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
              expect(true).to eq(true)
    ```

  * **Line # 23 - convention:** Layout/BlockAlignment: `end` at 23, 6 is not aligned with `describe 'when there is no prediction' do` at 11, 4.

    ```rb
          end
    ```

  * **Line # 24 - convention:** Layout/BlockAlignment: `end` at 24, 4 is not aligned with `describe "valid" do` at 10, 2.

    ```rb
        end
    ```

  * **Line # 25 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
        describe 'Winner' do ...
    ```

  * **Line # 26 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
            it 'should return team1' do
    ```

  * **Line # 27 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
              prediction = Prediction.new(match: match, team1_goals: 1, team2_goals: 0, gambler: user)
    ```

  * **Line # 27 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

    ```rb
                prediction = Prediction.new(match: match, team1_goals: 1, team2_goals: 0, gambler: user)     
    ```

  * **Line # 28 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
            expect(prediction.winner).to eq(team_1)
    ```

  * **Line # 30 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
          it 'should return team2' do ...
    ```

  * **Line # 31 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
                prediction = Prediction.new(match: match, team1_goals: 1, team2_goals: 2, gambler: user)
    ```

  * **Line # 32 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
            expect(prediction.winner).to eq(team_2)
    ```

  * **Line # 34 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

    ```rb
        end    
    ```

### spec/test/test_Result_spec.rb - (201 offenses)
  * **Line # 1 - convention:** Naming/FileName: The name of this source file (`test_Result_spec.rb`) should use snake_case.

    ```rb
    require_relative '../../models/init'
    ```

  * **Line # 1 - convention:** Style/FrozenStringLiteralComment: Missing frozen string literal comment.

    ```rb
    require_relative '../../models/init'
    ```

  * **Line # 1 - convention:** Style/RedundantFileExtensionInRequire: Redundant `.rb` file extension detected.

    ```rb
    require_relative '../../models/init.rb'
    ```

  * **Line # 3 - convention:** Metrics/BlockLength: Block has too many lines. [49/25]

    ```rb
    describe '#Result' do ...
    ```

  * **Line # 4 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
        let(:team_1) { Team.new(name: 'T1') }
    ```

  * **Line # 4 - convention:** Naming/VariableNumber: Use normalcase for symbol numbers.

    ```rb
      let(:team_1) { Team.new(name: 'T1') }
    ```

  * **Line # 5 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
        let(:team_2) { Team.new(name: 'T2') }
    ```

  * **Line # 5 - convention:** Naming/VariableNumber: Use normalcase for symbol numbers.

    ```rb
      let(:team_2) { Team.new(name: 'T2') }
    ```

  * **Line # 5 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

    ```rb
        let(:team_2) { Team.new(name: 'T2') } 
    ```

  * **Line # 6 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
        let(:match) { Match.new(local: team_1, visitor: team_2, round: 1) }
    ```

  * **Line # 8 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
        describe 'load a new result' do ...
    ```

  * **Line # 9 - convention:** Layout/EmptyLinesAroundBlockBody: Extra empty line detected at block body beginning.

    ```rb
     ...
    ```

  * **Line # 9 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

  * **Line # 10 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
            it 'should return false, no match associated' do
    ```

  * **Line # 11 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
              result = Result.new(team1_goals: 1, team2_goals: 0)
    ```

  * **Line # 11 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
            expect(result.valid?).to be false
    ```

  * **Line # 14 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

  * **Line # 14 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
          it 'should return false, no team1_goals' do ...
    ```

  * **Line # 16 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
            expect(result.valid?).to be false
    ```

  * **Line # 16 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
                result = Result.new(match: match, team2_goals: 0)
    ```

  * **Line # 19 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

  * **Line # 19 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
          it 'should return true' do ...
    ```

  * **Line # 21 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
            expect(result.valid?).to be true
    ```

  * **Line # 21 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
                result = Result.new(match: match, team1_goals: 1, team2_goals: 0)
    ```

  * **Line # 26 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
        let(:user) { Gambler.new(name: 'G1', Email: 'g@gmail.com') }
    ```

  * **Line # 26 - convention:** Layout/SpaceInsideBlockBraces: Space missing inside {.

    ```rb
        let(:user) {Gambler.new(name: 'G1', Email: 'g@gmail.com')}
    ```

  * **Line # 26 - convention:** Layout/SpaceInsideBlockBraces: Space missing inside }.

    ```rb
        let(:user) {Gambler.new(name: 'G1', Email: 'g@gmail.com')}
    ```

  * **Line # 27 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
        let(:prediction) { Prediction.create(gambler: user, match: match, team1_goals: 1, team2_goals: 0) }
    ```

  * **Line # 28 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

  * **Line # 29 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
        describe 'calculatePoints method' do ...
    ```

  * **Line # 30 - convention:** Layout/EmptyLinesAroundBlockBody: Extra empty line detected at block body beginning.

    ```rb
     ...
    ```

  * **Line # 31 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
            it 'should calculate 2 points' do
    ```

  * **Line # 31 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
              result = Result.new(match: match, team1_goals: 2, team2_goals: 1)
    ```

  * **Line # 31 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
            expect(result.calculatePoints(prediction)).to eq(2)
    ```

  * **Line # 34 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
          it 'should calculate 3 points' do ...
    ```

  * **Line # 36 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
            expect(result.calculatePoints(prediction)).to eq(3)
    ```

  * **Line # 37 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
                result = Result.new(match: match, team1_goals: 2, team2_goals: 0)
    ```

  * **Line # 39 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
          it 'should calculate 4 points' do ...
    ```

  * **Line # 41 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
            expect(result.calculatePoints(prediction)).to eq(4)
    ```

  * **Line # 42 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
                result = Result.new(match: match, team1_goals: 1, team2_goals: 0)
    ```

  * **Line # 44 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
          it 'should calculate 0 points' do ...
    ```

  * **Line # 46 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
            expect(result.calculatePoints(prediction)).to eq(0)
    ```

  * **Line # 47 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
                result = Result.new(match: match, team1_goals: 0, team2_goals: 1)
    ```

  * **Line # 51 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
        describe 'Winner' do ...
    ```

  * **Line # 53 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
            it 'should return team1' do
    ```

  * **Line # 53 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
              result = Result.new(match: match, team1_goals: 1, team2_goals: 0)
    ```

  * **Line # 53 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
            expect(result.winner).to eq(team_1)
    ```

  * **Line # 54 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

    ```rb
                result = Result.new(match: match, team1_goals: 1, team2_goals: 0)     
    ```

  * **Line # 55 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
          it 'should return team2' do ...
    ```

  * **Line # 57 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
            expect(result.winner).to eq(team_2)
    ```

  * **Line # 58 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
                result = Result.new(match: match, team1_goals: 1, team2_goals: 2)
    ```

  * **Line # 62 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
        describe 'Change Score Method' do ...
    ```

  * **Line # 62 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 6 instead of 7).

    ```rb
          #        describe 'When prediction fails' do
    ```

  * **Line # 62 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 7 instead of 8).

    ```rb
           #        describe 'When prediction fails' do
    ```

  * **Line # 62 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 8 instead of 9).

    ```rb
            #        describe 'When prediction fails' do
    ```

  * **Line # 62 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 9 instead of 10).

    ```rb
             #        describe 'When prediction fails' do
    ```

  * **Line # 62 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 10 instead of 11).

    ```rb
              #        describe 'When prediction fails' do
    ```

  * **Line # 62 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 11 instead of 12).

    ```rb
               #        describe 'When prediction fails' do
    ```

  * **Line # 62 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 12 instead of 13).

    ```rb
                #        describe 'When prediction fails' do
    ```

  * **Line # 62 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 12 instead of 4).

    ```rb
                #        describe 'When prediction fails' do
    ```

  * **Line # 62 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 13 instead of 12).

    ```rb
                 #        describe 'When prediction fails' do
    ```

  * **Line # 62 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 13 instead of 14).

    ```rb
                 #        describe 'When prediction fails' do
    ```

  * **Line # 62 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 14 instead of 6).

    ```rb
                  #        describe 'When prediction fails' do
    ```

  * **Line # 63 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 6 instead of 7).

    ```rb
          #           it 'should return 0' do
    ```

  * **Line # 63 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 7 instead of 8).

    ```rb
           #           it 'should return 0' do
    ```

  * **Line # 63 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 8 instead of 9).

    ```rb
            #           it 'should return 0' do
    ```

  * **Line # 63 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 9 instead of 10).

    ```rb
             #        describe 'When prediction fails' do
    ```

  * **Line # 63 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 10 instead of 11).

    ```rb
              #           it 'should return 0' do
    ```

  * **Line # 63 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 11 instead of 12).

    ```rb
               #           it 'should return 0' do
    ```

  * **Line # 63 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 12 instead of 13).

    ```rb
                #           it 'should return 0' do
    ```

  * **Line # 63 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 12 instead of 4).

    ```rb
                #           it 'should return 0' do
    ```

  * **Line # 63 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 13 instead of 12).

    ```rb
                 #           it 'should return 0' do
    ```

  * **Line # 63 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 13 instead of 14).

    ```rb
                 #           it 'should return 0' do
    ```

  * **Line # 63 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 14 instead of 6).

    ```rb
                  #           it 'should return 0' do
    ```

  * **Line # 63 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

    ```rb
        describe 'Change Score Method' do            
    ```

  * **Line # 64 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 6 instead of 7).

    ```rb
          #              result = Result.new(match: match, team1_goals: 1, team2_goals: 0)
    ```

  * **Line # 64 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 7 instead of 8).

    ```rb
           #              result = Result.new(match: match, team1_goals: 1, team2_goals: 0)
    ```

  * **Line # 64 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 8 instead of 9).

    ```rb
            #        describe 'When prediction fails' do
    ```

  * **Line # 64 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 9 instead of 10).

    ```rb
             #              result = Result.new(match: match, team1_goals: 1, team2_goals: 0)
    ```

  * **Line # 64 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 10 instead of 11).

    ```rb
              #           it 'should return 0' do
    ```

  * **Line # 64 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 11 instead of 12).

    ```rb
               #              result = Result.new(match: match, team1_goals: 1, team2_goals: 0)
    ```

  * **Line # 64 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 12 instead of 13).

    ```rb
                #              result = Result.new(match: match, team1_goals: 1, team2_goals: 0)
    ```

  * **Line # 64 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 12 instead of 4).

    ```rb
                #              result = Result.new(match: match, team1_goals: 1, team2_goals: 0)
    ```

  * **Line # 64 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 13 instead of 12).

    ```rb
                 #              result = Result.new(match: match, team1_goals: 1, team2_goals: 0)
    ```

  * **Line # 64 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 13 instead of 14).

    ```rb
                 #              result = Result.new(match: match, team1_goals: 1, team2_goals: 0)
    ```

  * **Line # 64 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 14 instead of 6).

    ```rb
                  #              result = Result.new(match: match, team1_goals: 1, team2_goals: 0)
    ```

  * **Line # 65 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 6 instead of 7).

    ```rb
          #             result.change_score
    ```

  * **Line # 65 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 7 instead of 8).

    ```rb
           #             result.change_score
    ```

  * **Line # 65 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 8 instead of 9).

    ```rb
            #             result.change_score
    ```

  * **Line # 65 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 9 instead of 10).

    ```rb
             #           it 'should return 0' do            
    ```

  * **Line # 65 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 10 instead of 11).

    ```rb
              #             result.change_score
    ```

  * **Line # 65 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 11 instead of 12).

    ```rb
               #              result = Result.new(match: match, team1_goals: 1, team2_goals: 0)
    ```

  * **Line # 65 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 12 instead of 13).

    ```rb
                #             result.change_score
    ```

  * **Line # 65 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 12 instead of 4).

    ```rb
                #             result.change_score
    ```

  * **Line # 65 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 13 instead of 12).

    ```rb
                 #             result.change_score
    ```

  * **Line # 65 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 13 instead of 14).

    ```rb
                 #             result.change_score
    ```

  * **Line # 65 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 14 instead of 6).

    ```rb
                  #             result.change_score
    ```

  * **Line # 65 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

    ```rb
             #           it 'should return 0' do            
    ```

  * **Line # 66 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 6 instead of 7).

    ```rb
          #            user = Gambler.where(id: 1).first
    ```

  * **Line # 66 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 7 instead of 8).

    ```rb
           #            user = Gambler.where(id: 1).first
    ```

  * **Line # 66 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 8 instead of 9).

    ```rb
            #            user = Gambler.where(id: 1).first
    ```

  * **Line # 66 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 9 instead of 10).

    ```rb
             #            user = Gambler.where(id: 1).first
    ```

  * **Line # 66 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 10 instead of 11).

    ```rb
              #              result = Result.new(match: match, team1_goals: 1, team2_goals: 0)
    ```

  * **Line # 66 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 11 instead of 12).

    ```rb
               #            user = Gambler.where(id: 1).first
    ```

  * **Line # 66 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 12 instead of 13).

    ```rb
                #             result.change_score
    ```

  * **Line # 66 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 12 instead of 4).

    ```rb
                #            user = Gambler.where(id: 1).first
    ```

  * **Line # 66 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 13 instead of 12).

    ```rb
                 #            user = Gambler.where(id: 1).first
    ```

  * **Line # 66 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 13 instead of 14).

    ```rb
                 #            user = Gambler.where(id: 1).first
    ```

  * **Line # 66 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 14 instead of 6).

    ```rb
                  #            user = Gambler.where(id: 1).first
    ```

  * **Line # 67 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 6 instead of 7).

    ```rb
          #           puts(user.name)
    ```

  * **Line # 67 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 7 instead of 8).

    ```rb
           #           puts(user.name)
    ```

  * **Line # 67 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 8 instead of 9).

    ```rb
            #           puts(user.name)
    ```

  * **Line # 67 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 9 instead of 10).

    ```rb
             #           puts(user.name)
    ```

  * **Line # 67 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 10 instead of 11).

    ```rb
              #           puts(user.name)
    ```

  * **Line # 67 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 11 instead of 12).

    ```rb
               #             result.change_score
    ```

  * **Line # 67 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 12 instead of 13).

    ```rb
                #           puts(user.name)
    ```

  * **Line # 67 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 12 instead of 4).

    ```rb
                #           puts(user.name)
    ```

  * **Line # 67 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 13 instead of 12).

    ```rb
                 #           puts(user.name)
    ```

  * **Line # 67 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 13 instead of 14).

    ```rb
                 #            user = Gambler.where(id: 1).first
    ```

  * **Line # 67 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 14 instead of 6).

    ```rb
                  #           puts(user.name)
    ```

  * **Line # 68 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 6 instead of 7).

    ```rb
          #          expect(user.Total_score).to eq(0)
    ```

  * **Line # 68 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 7 instead of 8).

    ```rb
           #          expect(user.Total_score).to eq(0)
    ```

  * **Line # 68 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 8 instead of 9).

    ```rb
            #          expect(user.Total_score).to eq(0)
    ```

  * **Line # 68 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 9 instead of 10).

    ```rb
             #          expect(user.Total_score).to eq(0)
    ```

  * **Line # 68 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 10 instead of 11).

    ```rb
              #          expect(user.Total_score).to eq(0)
    ```

  * **Line # 68 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 11 instead of 12).

    ```rb
               #          expect(user.Total_score).to eq(0)
    ```

  * **Line # 68 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 12 instead of 13).

    ```rb
                #            user = Gambler.where(id: 1).first
    ```

  * **Line # 68 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 12 instead of 4).

    ```rb
                #          expect(user.Total_score).to eq(0)
    ```

  * **Line # 68 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 13 instead of 12).

    ```rb
                 #          expect(user.Total_score).to eq(0)
    ```

  * **Line # 68 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 14 instead of 15).

    ```rb
                  #           puts(user.name)
    ```

  * **Line # 68 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 14 instead of 6).

    ```rb
                  #          expect(user.Total_score).to eq(0)
    ```

  * **Line # 69 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 6 instead of 7).

    ```rb
          #     end
    ```

  * **Line # 69 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 7 instead of 8).

    ```rb
           #     end
    ```

  * **Line # 69 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 8 instead of 9).

    ```rb
            #     end
    ```

  * **Line # 69 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 9 instead of 10).

    ```rb
             #     end
    ```

  * **Line # 69 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 10 instead of 11).

    ```rb
              #     end
    ```

  * **Line # 69 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 11 instead of 12).

    ```rb
               #     end
    ```

  * **Line # 69 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 12 instead of 13).

    ```rb
                #     end
    ```

  * **Line # 69 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 12 instead of 4).

    ```rb
                #     end
    ```

  * **Line # 69 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 13 instead of 12).

    ```rb
                 #     end
    ```

  * **Line # 69 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 13 instead of 14).

    ```rb
                 #           puts(user.name)
    ```

  * **Line # 69 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 15 instead of 16).

    ```rb
                   #          expect(user.Total_score).to eq(0)
    ```

  * **Line # 70 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 7 instead of 8).

    ```rb
           # end
    ```

  * **Line # 70 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 8 instead of 9).

    ```rb
            # end
    ```

  * **Line # 70 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 9 instead of 10).

    ```rb
             # end
    ```

  * **Line # 70 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 10 instead of 11).

    ```rb
              # end
    ```

  * **Line # 70 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 11 instead of 12).

    ```rb
               # end
    ```

  * **Line # 70 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 12 instead of 13).

    ```rb
                # end
    ```

  * **Line # 70 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 12 instead of 4).

    ```rb
                # end
    ```

  * **Line # 70 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 13 instead of 12).

    ```rb
                 # end
    ```

  * **Line # 70 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 14 instead of 15).

    ```rb
                  #          expect(user.Total_score).to eq(0)
    ```

  * **Line # 70 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 16 instead of 8).

    ```rb
                    #     end
    ```

  * **Line # 71 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 8 instead of 9).

    ```rb
            # end
    ```

  * **Line # 71 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 15 instead of 16).

    ```rb
                   #     end
    ```

  * **Line # 72 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 8 instead of 9).

    ```rb
            #        describe 'When prediction succeed' do
    ```

  * **Line # 72 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 9 instead of 10).

    ```rb
             #        describe 'When prediction succeed' do
    ```

  * **Line # 72 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 10 instead of 11).

    ```rb
              #        describe 'When prediction succeed' do
    ```

  * **Line # 72 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 11 instead of 12).

    ```rb
               #        describe 'When prediction succeed' do
    ```

  * **Line # 72 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 12 instead of 13).

    ```rb
                #        describe 'When prediction succeed' do
    ```

  * **Line # 72 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 12 instead of 4).

    ```rb
                #        describe 'When prediction succeed' do
    ```

  * **Line # 72 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 13 instead of 12).

    ```rb
                 #        describe 'When prediction succeed' do
    ```

  * **Line # 72 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 16 instead of 8).

    ```rb
                    #end
    ```

  * **Line # 72 - convention:** Layout/LeadingCommentSpace: Missing space after `#`.

    ```rb
                    #end
    ```

  * **Line # 73 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

  * **Line # 73 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 9 instead of 10).

    ```rb
             #        describe 'When prediction succeed' do
    ```

  * **Line # 73 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 10 instead of 11).

    ```rb
              #           it 'should return 2' do
    ```

  * **Line # 73 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 11 instead of 12).

    ```rb
               #           it 'should return 2' do
    ```

  * **Line # 73 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 12 instead of 13).

    ```rb
                #           it 'should return 2' do
    ```

  * **Line # 73 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 12 instead of 4).

    ```rb
                #           it 'should return 2' do
    ```

  * **Line # 73 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 13 instead of 12).

    ```rb
                 #           it 'should return 2' do
    ```

  * **Line # 74 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 8 instead of 9).

    ```rb
            #        describe 'When prediction succeed' do
    ```

  * **Line # 74 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 10 instead of 11).

    ```rb
              #           it 'should return 2' do
    ```

  * **Line # 74 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 11 instead of 12).

    ```rb
               #              result = Result.new(match: match, team1_goals: 1, team2_goals: 0)
    ```

  * **Line # 74 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 12 instead of 13).

    ```rb
                #              result = Result.new(match: match, team1_goals: 1, team2_goals: 0)
    ```

  * **Line # 74 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 12 instead of 4).

    ```rb
                #              result = Result.new(match: match, team1_goals: 1, team2_goals: 0)
    ```

  * **Line # 74 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 13 instead of 12).

    ```rb
                 #              result = Result.new(match: match, team1_goals: 1, team2_goals: 0)
    ```

  * **Line # 75 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 9 instead of 10).

    ```rb
             #           it 'should return 2' do
    ```

  * **Line # 75 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 11 instead of 12).

    ```rb
               #              result = Result.new(match: match, team1_goals: 1, team2_goals: 0)
    ```

  * **Line # 75 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 12 instead of 13).

    ```rb
                #             result.change_score
    ```

  * **Line # 75 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 12 instead of 4).

    ```rb
                #             result.change_score
    ```

  * **Line # 75 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 13 instead of 12).

    ```rb
                 #             result.change_score
    ```

  * **Line # 76 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 10 instead of 11).

    ```rb
              #              result = Result.new(match: match, team1_goals: 1, team2_goals: 0)
    ```

  * **Line # 76 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 12 instead of 13).

    ```rb
                #             result.change_score
    ```

  * **Line # 76 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 12 instead of 4).

    ```rb
                #            user = Gambler.where(name: 'G1').first
    ```

  * **Line # 76 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 13 instead of 12).

    ```rb
                 #            user = Gambler.where(name: 'G1').first
    ```

  * **Line # 77 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 11 instead of 12).

    ```rb
               #             result.change_score
    ```

  * **Line # 77 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 12 instead of 4).

    ```rb
                #           expect(user.Total_score).to eq(2)
    ```

  * **Line # 77 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 13 instead of 12).

    ```rb
                 #           expect(user.Total_score).to eq(2)
    ```

  * **Line # 77 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 13 instead of 14).

    ```rb
                 #            user = Gambler.where(name: 'G1').first
    ```

  * **Line # 78 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 12 instead of 13).

    ```rb
                #            user = Gambler.where(name: 'G1').first
    ```

  * **Line # 78 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 12 instead of 4).

    ```rb
                #      end
    ```

  * **Line # 78 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 14 instead of 15).

    ```rb
                  #           expect(user.Total_score).to eq(2)
    ```

  * **Line # 79 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 13 instead of 14).

    ```rb
                 #           expect(user.Total_score).to eq(2)
    ```

  * **Line # 79 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 15 instead of 14).

    ```rb
                   #      end
    ```

  * **Line # 80 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 14 instead of 15).

    ```rb
                  #      end
    ```

  * **Line # 80 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 14 instead of 6).

    ```rb
                  # end
    ```

  * **Line # 81 - convention:** Layout/CommentIndentation: Incorrect indentation detected (column 15 instead of 14).

    ```rb
                   # end
    ```

  * **Line # 82 - convention:** Layout/EmptyLinesAroundBlockBody: Extra empty line detected at block body end.

    ```rb
     ...
    ```

  * **Line # 82 - convention:** Layout/BlockAlignment: `end` at 82, 12 is not aligned with `describe 'Change Score Method' do            ` at 63, 4.

    ```rb
                end
    ```

  * **Line # 83 - convention:** Layout/TrailingWhitespace: Trailing whitespace detected.

  * **Line # 84 - convention:** Layout/TrailingEmptyLines: Final newline missing.

    ```rb
    end
    ```

### spec/test/test_Team_spec.rb - (12 offenses)
  * **Line # 1 - convention:** Naming/FileName: The name of this source file (`test_Team_spec.rb`) should use snake_case.

    ```rb
    require_relative '../../models/init'
    ```

  * **Line # 1 - convention:** Style/FrozenStringLiteralComment: Missing frozen string literal comment.

    ```rb
    require_relative '../../models/init'
    ```

  * **Line # 1 - convention:** Style/RedundantFileExtensionInRequire: Redundant `.rb` file extension detected.

    ```rb
    require_relative '../../models/init.rb'
    ```

  * **Line # 4 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
        let(:team) { Team.create(name: 'URSS') }
    ```

  * **Line # 5 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
        it 'should return false, invalid team name' do ...
    ```

  * **Line # 6 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
            team.save
    ```

  * **Line # 7 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
          team2 = Team.new(name: 'URSS')
    ```

  * **Line # 8 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
          expect(team2.valid?).to be false
    ```

  * **Line # 10 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
        it 'should return true' do ...
    ```

  * **Line # 11 - convention:** Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.

    ```rb
            team2 = Team.new(name: 'Rusia')
    ```

  * **Line # 12 - convention:** Layout/IndentationConsistency: Inconsistent indentation detected.

    ```rb
          expect(team2.valid?).to be true
    ```

  * **Line # 14 - convention:** Layout/TrailingEmptyLines: Final newline missing.

    ```rb
    end
    ```

