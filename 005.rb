puts "What is the smallest number divisible by each of the numbers 1 to 20?"

# Apparently, the rational library has a Least Common Multiple function to do this.

def most x, start
  result = start
  while x%result==0
    result += 1
  end
  result-1
end

def answer
  prev = step = result = 2
  loop do
    max = most(result,prev)
    break if max>=20
    if max > prev
      step = result
      prev = max
    end
    result += step
  end
  result
end

puts answer
