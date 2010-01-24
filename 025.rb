puts "What is the first term in the Fibonacci sequence to contain 1000 digits?"

def answer
  cur, prev, limit = 1, 1, 10**999
  term = 2
  loop do
    term += 1
    cur, prev = cur+prev, cur
    break if cur-limit > 0
  end
  term
end

puts answer
