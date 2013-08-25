def split_apart(first, *splat, last)
  puts "First:#{first.inspect}, splat:#{splat.inspect}," + "last:#{last.inspect}"
end

split_apart(1,2)
split_apart(1,2,3)
split_apart(1,2,3,4)