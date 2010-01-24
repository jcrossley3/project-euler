puts "Find the largest palindrome made from the product of two 3-digit numbers."

def palindrome? x
  s = x.to_s
  s == s.reverse
end
def answer
  max = 0
  999.downto(100).each do |x|
    999.downto(100).each do |y|
      prod = x*y
      max = prod if prod>max and palindrome?(prod)
    end
  end
  max
end

puts answer
