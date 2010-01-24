
# Evidently, this is VERY slow.  See answer for #7
def prime? x
  low, high = 2, x/2
  while low <= high
    return false if x % low == 0
    low += 1
    high = x/low
  end
  return true
end

