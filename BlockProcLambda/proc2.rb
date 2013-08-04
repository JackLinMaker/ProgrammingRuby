# saving reusable code as an object itself.
# this reusable code is called a Proc.
# the only difference between blocks and Procs is that a block is a Proc that cannot be
# saved,and is one time use solution

def what_am_i(&block)
  block.class
end

#puts what_am_i {}

class Array
  def iterate!(code) # no ampersand because we are passing the Proc, not the block. Proc is just like any other data types
    self.each_with_index do |n, i|
      self[i] = code.call(n)
    end
  end
end

array_1 = [1, 2, 3, 4]
array_2 = [2, 3, 4, 5]

square = Proc.new do |n|
  n ** 2
end

square2 = Proc.new { |n| n ** 2 }

square3 = lambda { |n| n ** 2 }


array_1.iterate!(square3)
array_2.iterate!(square3)

puts array_1.inspect
puts array_2.inspect


array = [1, 2, 3, 4]
=begin
array.iterate! (Proc.new do |n|
  n ** 2
end)

puts array.inspect
=end