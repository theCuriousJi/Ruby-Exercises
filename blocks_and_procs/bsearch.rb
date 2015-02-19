def bsearch(array, target)
  middle = array.length / 2
  pivot = array[middle]

  if target == pivot
    return middle
  elsif target > pivot
    subarray = array[middle...array.length]
    middle + bsearch(subarray, target)
  elsif target < pivot
    subarray = array[0..middle - 1]
    bsearch(subarray, target)
  else
    nil
  end
end


puts bsearch([1,2,3,4,5], 4)
