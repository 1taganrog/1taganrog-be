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

ActiveRecord::Schema[7.0].define(version: 2022_03_29_114722) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "albums", force: :cascade do |t|
    t.string "mediaUrl"
    t.boolean "isWide"
    t.string "textColor"
    t.string "onMapsLink"
    t.string "bgColor"
    t.string "name"
  end

  create_table "industries", force: :cascade do |t|
    t.string "mediaUrl"
    t.boolean "isWide"
    t.string "textColor"
    t.string "onMapsLink"
    t.string "bgColor"
    t.string "name"
  end

  create_table "media", force: :cascade do |t|
    t.string "type"
    t.integer "album_id"
    t.string "content"
  end

  create_table "museums", force: :cascade do |t|
    t.string "mediaUrl"
    t.boolean "isWide"
    t.string "textColor"
    t.string "onlineMuseumLink"
    t.string "onMapsLink"
    t.string "bgColor"
    t.string "name"
  end

end
