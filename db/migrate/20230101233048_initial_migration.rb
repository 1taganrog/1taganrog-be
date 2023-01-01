class InitialMigration < ActiveRecord::Migration[7.0]
  def change
  create_table "albums", force: :cascade do |t|
    t.string "media_url", null: false
    t.boolean "is_wide", null: false
    t.string "text_color", null: false
    t.string "site_url", null: false
    t.string "on_maps_url", null: false
    t.string "bg_color", null: false
    t.string "name", null: false
  end


  create_table "home_audios", force: :cascade do |t|
    t.string "media_url", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "home_videos", force: :cascade do |t|
    t.string "media_url", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "industries", force: :cascade do |t|
    t.string "media_url", null: false
    t.boolean "is_wide", null: false
    t.string "text_color", null: false
    t.string "site_url", null: false
    t.string "on_maps_url", null: false
    t.string "bg_color", null: false
    t.string "name", null: false
  end

  create_table "media", force: :cascade do |t|
    t.string "content", null: false
    t.string "content_type", null: false
    t.integer "mediumable_id", null: false
    t.string "mediumable_type", null: false
  end

  create_table "museums", force: :cascade do |t|
    t.string "media_url", null: false
    t.boolean "is_wide", null: false
    t.string "text_color", null: false
    t.string "site_url", null: false
    t.string "on_maps_url", null: false
    t.string "bg_color", null: false
    t.string "name", null: false
  end

  end
end
