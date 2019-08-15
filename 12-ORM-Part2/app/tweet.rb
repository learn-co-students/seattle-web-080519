class Tweet
  attr_accessor :username, :message

  # @@all = []
  def initialize(input= {})
    @username = input["username"]
    @message = input["message"]
    # @@all << self
  end

  def self.all
    #Read
    # @@all
    sql = "SELECT * FROM tweets"

    DB[:conn].execute(sql)
  end

  def self.save(username, message)
    #Create
    sql = "
    INSERT INTO tweets(username, message)
    VALUES(?,?)"

    DB[:conn].execute(sql, username, message)
  end

  def self.create_table
    #Create
    sql = "CREATE TABLE IF NOT EXISTS tweets(id INTEGER PRIMARY KEY, username TEXT, message TEXT)"

    DB[:conn].execute(sql)
  end

  def self.find(id)
    #table, column, value
    #LIMIT : how much information
    #Read
    sql = "SELECT * FROM tweets WHERE id = ?"

    DB[:conn].execute(sql, id)
  end

  def self.find_by_username(username)
    #table, column, value
    #LIMIT : how much information
    sql = "SELECT * FROM tweets WHERE username = ?"

    DB[:conn].execute(sql, username)
  end

  # def self.find_by_message(message)
  #   #table, column, value
  #   #LIMIT : how much information
  # end

  def self.update(id, username, message)
    #Update
    #Id, paramaters to update
    sql = "UPDATE tweets
    SET username= ?, message = ?
    WHERE id = ?"
    # "UPDATE table_name
    # SET column1 = value1, column2 = value2...., columnN = valueN
    # WHERE [condition];"

    DB[:conn].execute(sql, username, message, id)
  end

  # def update()
  #   #paramaters
  #   # id
  # end

  def self.delete(id)
    #DELETE
    sql = " DELETE FROM tweets WHERE id = ?"
    DB[:conn].execute(sql, id)
#     DELETE FROM table_name
# WHERE [condition];
  end

  # def self.delete_by_username()
  # end

  def self.drop
    #DELETE
    sql = "DROP TABLE tweets"
    DB[:conn].execute(sql)
  end

end
