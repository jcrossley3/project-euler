puts "Add all the natural numbers below one thousand that are multiples of 3 or 5."

def answer
  (0...1000).inject do |sum,x|
    sum += (x%3==0 or x%5==0) ? x : 0
  end
end

puts answer

