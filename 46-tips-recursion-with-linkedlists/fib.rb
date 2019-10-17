## Fibonacci sequence is a well-studied pattern in which the previous
## two numbers in a series of numbers are added in order to output the sum as the 3rd number

## This becomes time-intensive at larger numbers.

## Write two methods that prove the time delta.

## 1,1,2,3,5,8,13,21
## 1,2,3,4,5,6,7,8

# Change the value for a to see how it impacts method run time. 
# Exceeding ~35/40 will greatly impact your machine. 

a = 30

#Method2
def fib_recursion(number)
    if number < 2
        number
    else
        fib_recursion(number-1) + fib_recursion(number-2)
    end
end

start = Time.now
puts fib_recursion(a)
stop = Time.now
puts (stop-start)*1000

#Method1
def fib(number)
    a = 0
    b = 1
    number.times do
      c = a
      a = b
      b = c + b
    end
    return a
end

start = Time.now
puts fib(a)
stop = Time.now
puts (stop-start)*1000

#Method3
def fib2(n)
    x = 0
    y = 1
    count = 0
    loop do
        z = x
        x = y
        y = z + y
        count+=1
        break if count >= n
    end
    return x
end


start = Time.now
puts fib2(a)
stop = Time.now
puts (stop-start)*1000