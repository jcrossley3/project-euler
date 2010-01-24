puts "What is the sum of the digits of the number 2^1000?"

require 'lib/digits'

def answer
  sum_of_digits(2**1000)
end

puts answer
