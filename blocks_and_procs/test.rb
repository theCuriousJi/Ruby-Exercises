# def sort_rec(arr)
#
#   if arr.length  < 1
#     []
#
#   else
#     pivot = arr.sample
#     left = []
#     right = []
#     arr.each do |el|
#       next if el == pivot
#       if el < pivot
#         left << el
#       elsif el > pivot
#         right << el
#       end
#     end
#       sort_rec(left) + [pivot] + sort_rec(right)
#   end
#
#
#

# end

class Array
  def merge_sort
    return self if count < 2

    middle = count / 2  #[1,2,3,4,5] # middle 2

    left, right = self.take(middle), self.drop(middle) # [1,2] [3,4,5]

    sorted_left, sorted_right = left.merge_sort, right.merge_sort

    merge(sorted_left, sorted_right)
  end

    def merge(left, right)
      merged = []
      until left.empty? || right.empty?
        merged << (left.first < right.first ? left.shift : right.shift )
      end
      merged + left + right
    end

end

p [2,3,5,29,2,2,2,98,7,3,1].merge_sort
