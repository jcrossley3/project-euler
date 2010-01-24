puts "Find the only Pythagorean triplet, {a, b, c}, for which a + b + c = 1000."

def sum_of_pyth_triplet_is x
  (x/2).downto(x/10) do |b|
    (b-1).downto(x/20) do |a|
      c = Math.sqrt(a*a + b*b)
      if c==c.to_i && (a+b+c)==x
        return [a, b, c.to_i]
      end
    end
  end
end

def answer
  sum_of_pyth_triplet_is(1000).inject{|tot,x|tot*x}
end

puts answer
