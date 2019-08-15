#TIPS - FizzBuzz

### - About

FizzBuzz is perhaps the most famous algorithm. And it also an easy one.

For every integer under 100:
If the number is divisible by 3, write "Fizz"
If the number is divisible by 5, write "Buzz"
If the number is divisible by 3 and5, write "FizzBuzz"

How can we find if a number is divisible by another number? If it is indeed evenly divisible, then the result would be a whole number, an integer, and not a float or a fraction.

Please note that dividing two numbers in Ruby rounds to the nearest integer, so that

3/2
=> 1
3/2.0
=> 1.5
3/2.to_f
=> 1.5

I can think of 3 ways.
.integer? => Returns true if num is an Integer. False if not. But this doesn't really work here.

We could round the result to the nearest integer. If the results are equal, then the result is an integer.

3/2.0==3/2.0.floor
=> false

4/2.0==4/2.0.floor
=> true

Note that `.floor` converts a float to an integer.

But a better way is to see if the remainder is equal to zero. So 9 divided by 4 gives a remainder of 4. But 10 dived by 5 does not give a remainder.

How can we get the remainder? With the modulo operator.
9%5
=> 4
10%5
=> 0

So we should loop through and see if numbers are divisible by 3 and 5! Right!?!?! But

```
def fizzbuzz(max)
    1.upto(max) do |i|
    if i % 5 == 0
      puts "#{i} - BUZZ."
    elsif i % 3 == 0
      puts "#{i} - FIZZ."
    else
      puts i
    end
  end

end

fizzbuzz(100)
```

=> 15 - BUZZ.
=> 30 - BUZZ.

No. What about 15, 30, 45, 60, 75 and 90? They are divisible by BOTH 3 and 5. They have to output "FIZZBUZZ" How can we do this?

Well 3 times 5 is 15. So lets loop through and add 15 at the bottom of our code and that will fix it!

```
def fizzbuzz(max)
    1.upto(max) do |i|
    if i % 5 == 0
      puts "#{i} - BUZZ."
    elsif i % 3 == 0
      puts "#{i} - FIZZ."
    elsif i % 15 == 0
      puts "#{i} - FIZZBUZZ."
    else
      puts i
    end
  end

end

fizzbuzz(100)
```

So that did not work either. How can we fix this? Use pry to find out.

```
def fizzbuzz(max)
    1.upto(max) do |i|
    if i % 15 == 0
      puts "#{i} - FIZZBUZZ."
    elsif i % 5 == 0
      puts "#{i} - BUZZ."
    elsif i % 3 == 0
      puts "#{i} - FIZZ."
    else
      puts i
    end
  end

end

fizzbuzz(100)
```

So that was it. The logic always hit 3 or 5 and never 15 when it was the last case. Debugging with pry was the right answer.

Two things to remember:

1. Modulo operator.
2. Correct placement of the % 15 logic.
