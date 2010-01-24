puts "Calculate the sum of all the primes below two million."

require 'lib/primes'

def primes_below x
  yield 2 if 2 < x
  i = 3
  while i < x
    if prime?(i)
      yield i
    end
    i += 2
  end
end

def answer
  sum = 0
  primes_below(2_000_000) {|x| sum+=x}
  sum
end

puts answer
