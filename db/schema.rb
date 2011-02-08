# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110207000517) do

# Could not dump table "bids" because of following ActiveRecord::StatementInvalid
#   SQLite3::SQLException: no such table: sqlite3_foreign_keys:         SELECT *
          FROM sqlite3_foreign_keys
         WHERE "from_table_name" = 'bids'

# Could not dump table "photos" because of following ActiveRecord::StatementInvalid
#   SQLite3::SQLException: no such table: sqlite3_foreign_keys:         SELECT *
          FROM sqlite3_foreign_keys
         WHERE "from_table_name" = 'photos'

# Could not dump table "users" because of following ActiveRecord::StatementInvalid
#   SQLite3::SQLException: no such table: sqlite3_foreign_keys:         SELECT *
          FROM sqlite3_foreign_keys
         WHERE "from_table_name" = 'users'

end
