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

ActiveRecord::Schema.define(version: 2021_08_03_033708) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "locations", id: :bigint, default: nil, force: :cascade do |t|
    t.decimal "latitude", null: false
    t.decimal "longitude", null: false
    t.decimal "altitude", null: false
    t.decimal "temperatureC", null: false
    t.decimal "temperatureF", null: false
    t.datetime "createdOn"
  end

  create_table "raw_data", force: :cascade do |t|
    t.string "source_id", limit: 36
    t.bigint "server_time"
    t.text "data"
    t.index ["server_time", "source_id"], name: "raw_data_source_id_and_server_time"
    t.index ["source_id"], name: "raw_data_source_id"
  end

  create_table "tracking_data", force: :cascade do |t|
    t.string "source_id", limit: 36
    t.bigint "position_time"
    t.jsonb "data"
    t.index ["position_time", "source_id"], name: "tracking_data_source_id_and_position_time"
    t.index ["source_id"], name: "tracking_data_source_id"
  end

end
