class Array
  def iterate!
    self.each_with_index do |n, i|
      self[i] = yield(n) # calling this keyword will execute the code within the block provided to the method (n**2)
    end
  end
end

array = [1, 2, 3, 4]
array.iterate! do |n|
  n ** 2
end

puts array.inspect