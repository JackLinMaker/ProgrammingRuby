def create_block_object(&block)
  block
end


def n_times(thing)
  lambda { |n| thing * n } #=> create_block_object{ |n| thing * n}
end

p1 = n_times(23)
p1.call(3)
p1.call(4)
p2 = n_times("Hello ")
p2.call(3)
=begin
the method n_times return a Proc object that references the method's parameter,
thing. Even though that parameter is out of scope by the time the block is called.the parameter remains 
accessible to the block.This is called a closure ---- variables in the surrounding
scope that are referenced in a block remain accessible for the life of that block and the
life of any Proc object created from that block.
=end