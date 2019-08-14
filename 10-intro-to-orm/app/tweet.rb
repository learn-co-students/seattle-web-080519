class Tweet
  attr_accessor :username, :message
  @@all = []
  def initialize(input= {})
    # binding.pry
    @username = input["username"]
    @message = input["message"]
    @@all << self
  end

  def self.all
    @@all
  end

  def insert_data(message)
    sql = "INSERT INTO tweets(username, message)
    VALUES(?,?)"

    DB[:conn].execute(sql, self.username, message)
  end

  def create_table
    sql = "CREATE TABLE tweets"

    DB[:conn].execute(sql)
  end



end
