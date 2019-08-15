require 'bundler'
Bundler.require

require_relative '../app/tweets_app'
require_relative '../app/tweet'

DB = {
  conn: SQLite3::Database.new('db/tweeter.db')
}
DB[:conn].results_as_hash = true
