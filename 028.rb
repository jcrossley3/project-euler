puts "What is the sum of both diagonals in a 1001 by 1001 spiral?"

def answer
  counter = 1
  (1..500).inject(0) do |tot,x|
    tot += (1..4).inject(0) { |sum,y| sum += counter += 2*x }
  end + 1
end

puts answer
