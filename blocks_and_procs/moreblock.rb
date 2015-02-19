class Array

  def my_each(&block)
    if proc.nil?
      0.upto(self.length-1)
    else
      0.upto(self.length - 1) { |i| block.call(self[i]) }
    end

    self
  end

  def my_map(&proc)
    arr = []
    self.my_each { |x| arr << proc.call(x)}

    arr

  end

  def my_select(&proc)
    arr = []
    self.my_each { |x| arr << x if proc.call(x) }

    arr
  end

  def my_inject(&proc)
    result = self[0]
    self[1..-1].my_each do |x|
      result = proc.call(result, x)
    end
    result
  end


  def my_sort!(&proc)
    sorted = false
    while !sorted
      sorted = true
      0.upto(self.length - 2) do |i|
        if proc.call(self[i], self[i + 1]) == 1
          self[i], self[i + 1] = self[i + 1], self[i]
          sorted = false
        end
      end
    end
    self
  end

  def my_sort(&proc)
    new_arr = self.dup
    new_arr.my_sort! {|x, y| proc.call(x,y)}

    new_arr
  end

end

a=[4,2,1]
puts a.my_sort {|n1,n2| n1 <=> n2 }
p a
