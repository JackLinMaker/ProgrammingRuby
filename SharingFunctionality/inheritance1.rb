class Parent
  def say_hello
    puts "Hello from #{self}"
  end
end

p = Parent.new
p.say_hello

# subclass the parent
class Child < Parent
end

c = Child.new
c.say_hello