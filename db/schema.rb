# frozen_string_literal: true

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

ActiveRecord::Schema[7.0].define(version: 20_240_629_184_821) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'active_storage_attachments', force: :cascade do |t|
    t.string 'name', null: false
    t.string 'record_type', null: false
    t.bigint 'record_id', null: false
    t.bigint 'blob_id', null: false
    t.datetime 'created_at', null: false
    t.index ['blob_id'], name: 'index_active_storage_attachments_on_blob_id'
    t.index %w[record_type record_id name blob_id], name: 'index_active_storage_attachments_uniqueness',
                                                    unique: true
  end

  create_table 'active_storage_blobs', force: :cascade do |t|
    t.string 'key', null: false
    t.string 'filename', null: false
    t.string 'content_type'
    t.text 'metadata'
    t.string 'service_name', null: false
    t.bigint 'byte_size', null: false
    t.string 'checksum'
    t.datetime 'created_at', null: false
    t.index ['key'], name: 'index_active_storage_blobs_on_key', unique: true
  end

  create_table 'active_storage_variant_records', force: :cascade do |t|
    t.bigint 'blob_id', null: false
    t.string 'variation_digest', null: false
    t.index %w[blob_id variation_digest], name: 'index_active_storage_variant_records_uniqueness', unique: true
  end

  create_table 'levels', force: :cascade do |t|
    t.string 'title'
    t.integer 'level_int'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'riddles', force: :cascade do |t|
    t.string 'question'
    t.string 'answer'
    t.boolean 'is_trap', default: false
    t.bigint 'level_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['level_id'], name: 'index_riddles_on_level_id'
  end

  create_table 'solved_riddles', force: :cascade do |t|
    t.bigint 'user_id', null: false
    t.bigint 'riddle_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['riddle_id'], name: 'index_solved_riddles_on_riddle_id'
    t.index %w[user_id riddle_id], name: 'index_solved_riddles_on_user_id_and_riddle_id', unique: true
    t.index ['user_id'], name: 'index_solved_riddles_on_user_id'
  end

  create_table 'trap_counts', force: :cascade do |t|
    t.bigint 'user_id', null: false
    t.integer 'trap_count', default: 0
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.bigint 'level_id', null: false
    t.index ['level_id'], name: 'index_trap_counts_on_level_id'
    t.index ['user_id'], name: 'index_trap_counts_on_user_id'
  end

  create_table 'user_level_progresses', force: :cascade do |t|
    t.bigint 'user_id', null: false
    t.bigint 'level_id', null: false
    t.datetime 'reached_at'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['level_id'], name: 'index_user_level_progresses_on_level_id'
    t.index ['user_id'], name: 'index_user_level_progresses_on_user_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'provider', default: 'email', null: false
    t.string 'uid', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.boolean 'allow_password_change', default: false
    t.datetime 'remember_created_at'
    t.string 'confirmation_token'
    t.datetime 'confirmed_at'
    t.datetime 'confirmation_sent_at'
    t.string 'unconfirmed_email'
    t.string 'name'
    t.string 'nickname'
    t.string 'image'
    t.string 'email'
    t.json 'tokens'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['confirmation_token'], name: 'index_users_on_confirmation_token', unique: true
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
    t.index %w[uid provider], name: 'index_users_on_uid_and_provider', unique: true
  end

  add_foreign_key 'active_storage_attachments', 'active_storage_blobs', column: 'blob_id'
  add_foreign_key 'active_storage_variant_records', 'active_storage_blobs', column: 'blob_id'
  add_foreign_key 'riddles', 'levels'
  add_foreign_key 'solved_riddles', 'riddles'
  add_foreign_key 'solved_riddles', 'users'
  add_foreign_key 'trap_counts', 'levels'
  add_foreign_key 'trap_counts', 'users'
  add_foreign_key 'user_level_progresses', 'levels'
  add_foreign_key 'user_level_progresses', 'users'
end
