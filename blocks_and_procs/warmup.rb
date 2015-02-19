
def range(start, last)
  if last - 1 <= start
    []
  else
    [start + 1] + range(start + 1, last)
end
end



def sum(arr, i=0)


  if arr.length == 1
    return arr.shift
  else
    arr.shift + sum(arr)
  end

end

def exp1(b,n)
  if n == 0
    1
  else
    b * exp1(b,n-1)
  end
end

exp1(2,3)

def exp(b,n)

  if n == 0
    1
  elsif n == 1
    b
  elsif n.odd?
    b * (exp(b,(n-1)/2)) * (exp(b,(n-1)/2))
  elsif n.even?
    (exp(b,n/2)) * (exp(b,n/2))
  end
end

exp(2,9)


def deep_dup(arg)
  temp = []
  if arg.is_a?(Array)
    arg.each do |el|
      deep_dup(arg)
    end
  else
    temp << arg
  end

  temp
end



def d_dup(arr)

  arr.each_index do |index|
    if index == arr.length
      return
    elsif !arr[index].is_a?(Array)
     Array.new <<  arr[index]<< d_dup(arr[index+1])
  else
    arr[index].each do |e|
      Array.new << e << d_dup(arr[index+1])
    end
  end
end

end

p d_dup([1,[2,3],4])
