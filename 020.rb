puts "Find the sum of digits in 100!"

require 'lib/digits'

def factorial x
  x==1 ? 1 : x * factorial(x-1)
end

def answer
  sum_of_digits(factorial(100))
end

puts answer
