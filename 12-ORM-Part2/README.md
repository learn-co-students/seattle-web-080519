# Database:
- We are going to finish up Tweeter and writing out our methods
- Incorporate Active Record into our program
- Show how Active Record will be used

# Organizing our data/models:
  - ORMS - Object Relationship/Relational Mapping
    - Database -> Domain(Tweeter)
    - Tables -> tweets, users, likes(source of truth, join)
      - tweet.rb, user.rb, like.rb ( Will refer to as model/class)
    - Columns -> atrributes
      - tweets(username, message), users(username), likes(tweet, user)
    - Rows ->
      - Actual data, instances
      - tweet1 = "I love coffe", coffee_dad, tea_uncle, tweet1 = "IloveCoffe"

# CRUD REVIEW
 - Create
  ```SQL
    INSERT INTO tweet(username, message) VALUES(coffee_dad, "Coffeeeeee")
   ```
   ```Ruby
   ```
   ```SQL
    CREATE TABLE tweets(username TEXT, message TEXT)
   ```
   ```Ruby
   ```
 - Read
  ```SQL
    SELECT * FROM tweets
    SELECT * FROM tweets WHERE username = coffee_dad
   ```
   ```Ruby
   ```
 - Update
    ```SQL
    ALTER tweets COLUMNS(username) WHERE username = coffee_dad
    ```  
 - Delete
  ```SQL
  DROP TABLE tweets
  DELETE .. FROM .. WHERE ..
  ```

###### Connection String :
```ruby
DB = {
  conn: SQLite3::Database.new('db/twitter.db')
}
```
DB[:conn].results_as_hash = true
# Intro to ORMs (Object Relational Mappers)

A tweet belongs to a user and has some message content - must have user_id

The belongs_to must have a user_id on it

A user has a username, and has many tweets

A tweet can have many tags and a tag can have many tweets

require 'sinatra/activerecord/rake'

## Reference Code for Active Record
```ruby
## Establishing a connection with Active Record.
ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'db/pokemon.db'
)

##Gems to install
gem 'sqlite3'
gem 'pry'
gem 'sinatra-activerecord'
gem 'rake'
gem 'require_all'

## Log SQL Queries that you need to run
ActiveRecord::Base.logger = Logger.new(STDOUT)
```
### Reference Links :
[Migration source](https://apidock.com/rails/ActiveRecord/ConnectionAdapters/SchemaStatements/create_table)
https://apidock.com/rails/ActiveRecord/Base/find/class
