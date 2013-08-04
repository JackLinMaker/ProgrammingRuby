def args(code)
  one, two = 1, 2
  code.call(one, two)
end

# 1. unlike Procs, lambda check the number of arguments passed.


args(Proc.new{ |a, b, c|  puts "Give me a #{a} and a #{b} and a #{c.class}" })
#args(lambda{ |a, b, c|  puts "Give me a #{a} and a #{b} and a #{c.class}" })

# 2. while a Proc return will stop a method and return the value provided. lambdas will return their value to the method and let the method continue on.

def proc_return
  Proc.new { return "Proc.new" }.call
  return "proc_return method finished."
end

def lambda_return
  lambda { return "lambda" }.call
  return "lambda_return method finished"
end

puts proc_return #=> Proc.new.
puts lambda_return #=> lambda_return method finished.

# why the difference
# the answer is in the conceptual differences between procedures and methods.
# Procs in Ruby are drop in code snippets, not methods. 
