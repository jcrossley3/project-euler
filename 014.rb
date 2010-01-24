puts "Find the longest sequence using a starting number under one million."

class Sequencer
  @@sizes = {}
  def after val
    val%2==0 ? val/2 : 3*val+1
  end
  def size num
    @@sizes[num] or num==1 ? 1 : @@sizes[num] = 1 + size(after(num))
  end
end

def answer
  sequencer = Sequencer.new
  max = [0,0]
  1.upto(1_000_000) do |x|
    size = sequencer.size(x)
    max = [x, size] if size > max[1]
  end
  max[0]
end

puts answer
