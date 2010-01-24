puts "What is the difference between the sum of the squares and the square of the sums?"

def sum_of_squares x
  (1..x).map{|x|x*x}.inject{|sum,x|sum+x}
end

def square_of_sum x
  sum = (1..x).inject{|tot,x|tot+x}
  sum*sum
end

def answer
  square_of_sum(100) - sum_of_squares(100)
end

puts answer
