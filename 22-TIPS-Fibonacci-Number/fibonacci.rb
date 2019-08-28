require "pry"

# find the number in the Fibonacci series at the corresponding index (zero-indexed)

def fibonacci_number(num)
    # make sure fibonacci_number(0) and fibonacci_number(1)
    # start the sequence by returning 1 and 1. 
    # This is an edge case

    if num <= 2
        return 1
    end
    # start the sequence with the first two numbers
    fibs_ar = [1, 1]
    # for educational purposes
    counter = 1

    # calculate the next number until the array has the one we want
    while fibs_ar.length < num
        second_to_last = fibs_ar[fibs_ar.length - 2]
        last = fibs_ar.last
        next_fib = second_to_last + last
        fibs_ar << next_fib
        counter +=1
        puts "second_to_last = #{second_to_last}"
        puts "last = #{last}"
        puts "next_fib = #{next_fib}"
        puts "counter = #{counter}"
        puts "The Fibonacci Series is = #{fibs_ar}"
        puts "After #{counter} iterations, the last number is #{last}"
        puts "==========================================="
    end
    print "The final Fibonacci series is: #{fibs_ar}"
    print "\n"
    print "The number in the Fibonacci series at position #{num} is: #{fibs_ar.last}"
    print "\n"
    fibs_ar.last
end


# print all the Fibonacci numbers up to a certain point.
# This using different syntax.

def fibo_print_all_upto(num)
    a = 1
    b = 1
    c = a+b
    ar = [a,b,c]
    num.times do
        a = b
        b = c
        c = a+b
        ar << c
    end
    print "The first #{num} in the Fibonacci series are #{ar}"
    print "\n"
end

# Calculate the mathematical constant Phi. This is closely related to Fibonaci's number.

def calculatePhi(num)
    a=1
    b=1
    c=a+b
    num.times do
        a=b
        b=c
        c=a+b
    end
    print "The value of PHI after #{num} iterations is #{c/b.to_f}"
    print "\n"
end

# Get the number at an index WITHOUT using an array. This does save space.

def fibonacci_numer_no_array(num)
    if num <= 2
        return 1
    end
    # for educational purposes
    counter = 2
    second_to_last = 1
    last = 1
    next_fib = 2
    # calculate the next number until the array has the one we want
    while counter < num
        second_to_last = last
        last = next_fib
        next_fib = second_to_last + last
        counter +=1
        puts "second_to_last = #{second_to_last}"
        puts "last = #{last}"
        puts "next_fib = #{next_fib}"
        puts "counter = #{counter}"
        puts "After #{counter} iterations, the last number is #{last}"
        puts "==========================================="
    end
    next_fib
end



# find the number in the Fibonacci series at the corresponding index (zero-indexed)
# fibonacci_number(8)
# => 21

# print all the Fibonacci numbers up to a certain point
# fibo_print_all_upto(12)
# => [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610]

# get the number at a certain index WITHOUT creating an array.
# fibonacci_numer_no_array(8)
# => 21

# calculate the constant phi to a certain number of iterations
calculatePhi(100)