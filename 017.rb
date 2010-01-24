puts "How many letters would be needed to write all the numbers in words from 1 to 1000?"

WORDS = {
  1 => 'one',
  2 => 'two',
  3 => 'three',
  4 => 'four',
  5 => 'five',
  6 => 'six',
  7 => 'seven',
  8 => 'eight',
  9 => 'nine',
  10 => 'ten',
  11 => 'eleven',
  12 => 'twelve',
  13 => 'thirteen',
  14 => 'fourteen',
  15 => 'fifteen',
  16 => 'sixteen',
  17 => 'seventeen',
  18 => 'eighteen',
  19 => 'nineteen',
  20 => 'twenty',
  30 => 'thirty',
  40 => 'forty',
  50 => 'fifty',
  60 => 'sixty',
  70 => 'seventy',
  80 => 'eighty',
  90 => 'ninety',
  100 => 'hundred',
  1000 => 'thousand',
}

def spell num
  result = ''
  thousands = num%10000/1000
  if thousands > 0
    result += WORDS[thousands] + WORDS[1000]
  end
  hundreds = num%1000/100
  if hundreds > 0
    result += WORDS[hundreds] + WORDS[100]
    result += 'and' if num%100 > 0
  end
  tens = num%100/10
  ones = num%10
  if tens == 1 # teens
    result += WORDS[10+ones]
  else
    if tens > 1
      result += WORDS[tens*10]
    end
    if ones > 0
      result += WORDS[ones]
    end
  end
  result
end

def answer
  (1..1000).inject(""){|tot,x| tot += spell(x)}.size
end

puts answer
