# TIPS Lecture

Technical Interview Practice for Students

This lecture covers technical interviews, whiteboarding, and algorithms.

### What is a technical interview?

An interview, usually in person with programmers or project managers at a company. The idea is to see how you respond to questions. But more importantly, how you think and reason your way through problems. General computer science questions and language specific questions are usually asked.

### What is whiteboarding?

The process of discussing code solutions, often on a whiteboard, in front of several people. This is designed to show the way that a person thinks about a specific problem. Often it is an algorithm.

### What is an algorithm?

Wikipedia

```
In mathematics and computer science, an algorithm (/ˈælɡərɪðəm/ ( listen)) is an unambiguous specification of how to solve a class of problems. Algorithms can perform calculation, data processing, automated reasoning, and other tasks.
```

Algorithms are popular in technical interview whiteboarding sessions.

Remember to reason out verbally your thought process. The actual writing on the board may be secondary in these interviews. The interviewers are trying to see if they are hiring a good communicator AND a good software engineer.

### Example - String Reverser

Here is an example of a string reverser.

```
require "pry"
def string_reverser(string)
  if string.class == String
    new_string = string.split("").reverse.join("-")
    p new_string
  else
    puts "Error. This is not a string. It is a #{string.class}. Please input a string."
  end
end

string_reverser("Flatiron")
string_reverser("Seattle")
string_reverser("Washington")
string_reverser("Antidisestablishmentartianism")
string_reverser("Supercalifragilisticexpialidocious")
string_reverser("Abcdefghijklmnopqrstuvwxyz")
string_reverser(7)
string_reverser(3.14)
string_reverser(false)
string_reverser([1,2,3,4,5])
string_reverser({"first_name": "Joe"})
string_reverser(:hello)
string_reverser(nil)
```

How I did things here:

To prevent bad data, I check to see if the input string is of class String. If not, I throw an error. In the error, I use string interpolation to show the class of the inputted data to the user.

If the input string IS of class String, I do the following:

First, I create a copy of the string and operate on that instead of the original string.

Next, `.split` splits a string into an array of strings. The optional paramater gives it a location of where to split.
Then, `reverse` reverses an array. Lastly, `join` links an array and returns a string, with an optional join character.

Links to relevant material:

###### .split

https://ruby-doc.org/core-2.6.1/String.html#method-i-split

###### .reverse

https://ruby-doc.org/core-2.6.1/String.html#method-i-reverse

###### .join

https://ruby-doc.org/core-2.6.1/Array.html#method-i-join
