puts "What is the value of the first triangle number to have over five hundred divisors?"

require 'lib/factors'

def answer
  i, result = 1, 0
  loop do
    result += i
    if result%6==0 && factors(result).size > 500
      return result
    else
      i += 1
    end
  end
end

puts answer
