class Array
  def my_uniq
    dup = []
    self.each do |x|
      dup << x unless dup.include?(x)
    end
    dup
  end

  def two_sum
    start = 0
    return_arr = []
    while start < self.length - 1
      i = start + 1
      while i < self.length
        return_arr << [start, i] if self[start] + self[i] == 0
        i += 1
      end
      start += 1
    end
    return_arr
  end

  def my_each(&c)
    i = 0
    while i < self.length
      c.call self[i]
      i += 1
    end
    self
  end
end

# return_value = [1, 2, 3].my_each do |num|
#   puts num
# end.my_each do |num|
#   puts num
# end

# p return_value

def tower_of_hanoi
  a = [3, 2, 1]
  b = []
  c = []
  towers = {"1" => a, "2" => b, "3" => c}

  while c != [3, 2, 1]
    puts "1: " + a.inspect + "\n" + "2: " + b.inspect + "\n" + "3: " + c.inspect
    puts "\nSelect a pile to choose a disk from"
      from = gets.chomp
    puts "\nSelect a pile on which to place disk"
      to = gets.chomp
    if towers[to].empty? || towers[from].empty? || towers[from].last < towers[to].last #allowed moves
      towers[to] << towers[from].pop
    else
      puts "wrong move\n"
    end
  end
  puts "Congratulations!"
end

def my_transpose(arr)
  return_arr = []
  i = 0
  while i < arr.length
    return_arr << []
    arr.each do |x|
      return_arr[i] << x[i]
    end
    i += 1
  end
  return_arr
end

def by_two(arr)
  arr.map{ |x| x * 2}
end

def median(arr)
  dup = arr.sort
  if dup.length % 2 == 0
    return (dup[(dup.length / 2)] + dup[(dup.length / 2) - 1]).to_f / 2
  else
    dup[(dup.length) / 2].to_f
  end
end

def concatenate(arr)
  arr.inject(:+)
end

p concatenate(["Yay ", "for ", "strings!"])
