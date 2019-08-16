require 'bundler'
Bundler.require
require_all '../13-prep/app'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'db/pokemon.db'
)
