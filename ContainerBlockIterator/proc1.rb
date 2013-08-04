class ProcExample
  # pass in the block as a parameter
  # store in a instance variable
  def pass_in_block(&action)
    @stored_proc = action
  end
  
  def use_proc(parameter)
    # invoke the block
    @stored_proc.call(parameter)
  end
end

# it's a great way of implementationing callbacks,dispatch tables, and so on.


eg = ProcExample.new
eg.pass_in_block {|param| puts "The paramenter is #{param}"}
eg.use_proc(99)