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
    self.my_each { |x| x }#arr << proc.call(x)}

    arr

  end

  def my_select(&proc)
    arr = []
    self.my_each { |x| arr << x if proc.call(x) == true }

    arr
  end

end
arr = [1, 2, 3, 4, 5]

# p [1,2,3,4,5].my_map {|x| x + x}
# p [1,2,3,4,5].my_select {|x| x > 2}
p [1,2,3,4,5].my_each { |x| puts x}
