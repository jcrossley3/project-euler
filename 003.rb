puts "Find the largest prime factor of a composite number."

require 'lib/primes'

def prime_factors target
  low, high = 2, target/2
  while low <= high 
    if target%low==0 and prime?(low)
      yield low
    end
    low += 1
    high = target/low
  end
end

def answer
  factors = []
  prime_factors(600851475143) {|x| factors << x}
  factors.max
end

puts answer
