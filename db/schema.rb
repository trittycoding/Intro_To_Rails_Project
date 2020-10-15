ActiveRecord::Schema.define(version: 2020_10_15_000012) do

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.integer "height"
    t.integer "weight"
    t.decimal "forty"
    t.decimal "vertical"
    t.integer "benchreps"
    t.decimal "broadjump"
    t.decimal "cone"
    t.decimal "shuttle"
    t.integer "draftyear"
    t.string "draftedby"
    t.integer "round"
    t.integer "pick"
    t.string "playerposition"
    t.integer "team_id", null: false
    t.integer "role_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["role_id"], name: "index_players_on_role_id"
    t.index ["team_id"], name: "index_players_on_team_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "players", "roles"
  add_foreign_key "players", "teams"
end
