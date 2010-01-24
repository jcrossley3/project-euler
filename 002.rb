puts "Find the sum of all the even-valued terms in the Fibonacci sequence which do not exceed four million."

def fib(x)
  return 1 if x==0 or x==1
  return fib(x-1) + fib(x-2)
end

def fibs_upto(max)
  count = 1
  loop do
    value = fib(count)
    if value < max
      yield value
      count += 1
    else
      break
    end
  end
end

def answer
  sum = 0
  fibs_upto(4_000_000) do |x|
    sum += x%2==0 ? x : 0
  end
  sum
end

puts answer
