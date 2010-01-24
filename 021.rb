puts "Evaluate the sum of all amicable pairs under 10000."

require 'lib/factors'

def answer
  map = {}
  (1...10000).each { |x| map[x] = factors(x).inject{|sum,x| sum+=x} }
  map.entries.select{|k,v| map[v] == k && v != k}.flatten.uniq.inject{|sum,x| sum+=x}
end

puts answer
