require "pry"
require 'rest-client'
require 'json'

puts "Hello! Welcome to the Mod 1 Book API CLI!!!"
print "Enter your query: "
query = gets.chomp.split(" ").join("+")
# query requires '+' to link words. How can we do this?
response = RestClient.get("https://www.googleapis.com/books/v1/volumes?q=#{query}")

# Notice the pause here. What is happening? Why is it so slow?

response_hash = JSON.parse(response)
books  = response_hash["items"]
first_book = books[0]

# example methods
def get_title(first_book)
    puts first_book["volumeInfo"]["authors"]
end

get_title(first_book)
