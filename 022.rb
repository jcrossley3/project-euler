puts "What is the total of all the name scores in the file of first names?"

LETTERS = ('A'..'Z').map{|x|x}
NAMES = File.read('data/names.txt').scan(/\w+/).sort

def value name
  pos = NAMES.index(name) + 1
  value = name.split(//).inject(0){|sum,x| sum += LETTERS.index(x)+1}
  pos * value
end

def answer
  NAMES.inject(0) {|sum,x| sum += value(x)}
end

puts answer
