# Database:
- Why is SQL/Databases Useful
  - Persistence
  - Use other programming besides Ruby to access them(data/Databases)
  - keep things better organized
  - @@all,CRUD,easier to access

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

####### Connection String :
```
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
