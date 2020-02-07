require "bundler"
Bundler.require

require_all "models"

# DB = SQLite3::Database.new("jurassic_park.db")
# DB.results_as_hash = true
#create a new database (find or create type built-in method)

ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: "jurassic_park_ActiveRecord.db",
)
