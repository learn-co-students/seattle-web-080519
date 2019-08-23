def palindrome?(string)
    c = 0
    num = string.length
    num.times do 
        if string[c] != string[-(c+1)]
            return false
        end
        c += 1
    end
    true
end

start = Time.now
palindrome?("racecar")
final = Time.now
puts "Solution 1 Run Time:"
puts (final-start)*1000
puts



def palindrome?(string)
    string == string.reverse
end

start = Time.now
palindrome?("racecar")
final = Time.now
puts "Solution 2 Run Time:"
puts (final-start)*1000
puts




def palindrome?(string)
    if string.downcase == string.reverse.downcase
        return true
    else
        return false
    end
end

start = Time.now
palindrome?("racecar")
final = Time.now
puts "Solution 3 Run Time:"
puts (final-start)*1000
puts




def palindrome?(word)
    word.downcase!
    ary = word.split("")
    i = 1
    rep = word.length
    reversed_ary = []

    while i <= rep
        popped = ary.pop
        reversed_ary << popped
        i += 1
    end

    reversed_ary.join("") == word

end

start = Time.now
palindrome?("racecar")
final = Time.now
puts "Solution 4 Run Time:"
puts (final-start)*1000
puts




puts palindrome?("racecar")
puts palindrome?("flatiron")
puts palindrome?("noon")
puts palindrome?("five")
puts palindrome?("radar")
puts palindrome?("learnlovecode")
