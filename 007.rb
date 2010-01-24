puts "Find the 10001st prime."

require 'lib/primes'

def find_prime x
  count, start = x, 1
  while count > 0
    start += 1
    if prime?(start)
      count -= 1
    end
  end
  start
end

def answer
  find_prime(10001)
end

puts answer
