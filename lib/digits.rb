
def sum_of_digits num
  num.to_s.scan(/./).map{|x|x.to_i}.inject{|sum,x|sum+x}
end
