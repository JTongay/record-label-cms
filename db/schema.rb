# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170817005316) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "albums", force: :cascade do |t|
    t.string   "title"
    t.date     "release_date"
    t.string   "album_type"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "albums_bands", id: false, force: :cascade do |t|
    t.integer "band_id",  null: false
    t.integer "album_id", null: false
    t.index ["band_id", "album_id"], name: "index_albums_bands_on_band_id_and_album_id", using: :btree
  end

  create_table "albums_songs", id: false, force: :cascade do |t|
    t.integer "album_id", null: false
    t.integer "song_id",  null: false
    t.index ["album_id", "song_id"], name: "index_albums_songs_on_album_id_and_song_id", using: :btree
  end

  create_table "bands", force: :cascade do |t|
    t.string   "band_name"
    t.string   "city"
    t.string   "state"
    t.date     "start_date"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.text     "bio"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "bands_genres", id: false, force: :cascade do |t|
    t.integer "band_id",  null: false
    t.integer "genre_id", null: false
    t.index ["band_id", "genre_id"], name: "index_bands_genres_on_band_id_and_genre_id", using: :btree
  end

  create_table "bands_musicians", id: false, force: :cascade do |t|
    t.integer "band_id",     null: false
    t.integer "musician_id", null: false
    t.index ["band_id", "musician_id"], name: "index_bands_musicians_on_band_id_and_musician_id", using: :btree
  end

  create_table "genres", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "instruments", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "instruments_musicians", id: false, force: :cascade do |t|
    t.integer "musician_id",   null: false
    t.integer "instrument_id", null: false
    t.index ["musician_id", "instrument_id"], name: "index_instruments_musicians_on_musician_id_and_instrument_id", using: :btree
  end

  create_table "members", force: :cascade do |t|
    t.string   "member_name"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "musicians", force: :cascade do |t|
    t.string   "first_name"
    t.string   "twitter_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "last_name"
  end

  create_table "songs", force: :cascade do |t|
    t.string   "title"
    t.integer  "track_number"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
