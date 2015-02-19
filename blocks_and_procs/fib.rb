def fib(n)
  answer= []
  if n == 1
    answer << 1
  elsif n == 2
    answer << 1
    answer << 1
  else
    answer += fib(n-1) + [fib(n-1)[-1] + fib(n-1)[-2]]
    p answer
  end


end

p fib(5)
