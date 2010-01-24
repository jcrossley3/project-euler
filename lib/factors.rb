
def factors target
  return [1] if target==1
  low, high = 1, target
  result = []
  until low > high 
    if target%low==0 
      result << low << target/low
    end
    low += 1
    high = target/low if target%low==0
  end
  result - [target]
end
