puts "Find the last ten digits of 1^1 + 2^2 + ... + 1000^1000."

def answer
  result = (1..1000).inject(0){|sum,x| sum += x**x}
  result.to_s[-10,10]
end

puts answer
