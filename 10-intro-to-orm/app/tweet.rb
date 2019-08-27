class Tweet
  attr_accessor :username, :message
  @@all = []
  def initialize(input= {})
    @username = input["username"]
    @message = input["message"]
    @@all << self
  end

  def self.all
    @@all
  end

  def self.insert_data(message, username)
    sql = "INSERT INTO tweets(username, message)
    VALUES(?,?)"

    DB[:conn].execute(sql, username, message)
  end

  def self.create_table
    sql = "CREATE TABLE IF NOT EXISTS tweets(id INTEGER PRIMARY KEY, username TEXT, message TEXT)"

    DB[:conn].execute(sql)
  end

  def self.find
  end

  def self.udpate
  end

end
