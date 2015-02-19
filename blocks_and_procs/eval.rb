def eval_block(*args, &proc)
  proc.call(*args)
end



eval_block(1,2,3,4,5) do |*args|
  # args = [n1, n2, n3, n4, n5]
  args.inject(:+)
end
#
#
# eval_block('Sarah', "Jasmine", "Breakfast") do |n1, n2, n3|
#   n1 + n2 + n3
# end
