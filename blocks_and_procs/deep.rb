class Array

  def deep_dup
    temp = []
    #if self.is_a?(Array)
    self.each do |el|
      if el.is_a?(Array)
        temp << el.deep_dup
      else
        temp << el
        p temp
      end

      end
      p temp
    temp
  end

end

p [1, [2], [3, [4]]].deep_dup
