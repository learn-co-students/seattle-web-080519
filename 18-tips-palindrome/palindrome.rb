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

def palindrome?(string)
    string == string.reverse
end

def palindrome?(string)
    if string.downcase == string.reverse.downcase
        return true
    else
        return false
    end
end

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

puts palindrome?("racecar")
puts palindrome?("flatiron")
puts palindrome?("noon")
puts palindrome?("five")
puts palindrome?("radar")
puts palindrome?("learnlovecode")