def num_to_s(num,base)
  pow = 0
  return_str = ""
  while (num / (base ** pow)) != 0
    return_str << ((num / (base ** pow)) % base).to_s
    pow += 1
  end
  return_str.reverse
end

puts num_to_s(234, 10)
puts num_to_s(234, 2)

def caesar(str, num)
  arr = ("a".."z").to_a
  return_str = ""
  shift = num % 26
  str.each_char do |x|
    if (arr.index(x) + shift) > 26
      return_str << arr[(arr.index(x) + shift - 26)]
    else
      return_str << arr[(arr.index(x) + shift)]
    end
    x
  end
  return_str
end

puts caesar("hello", 3)
