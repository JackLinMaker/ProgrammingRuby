class Fixnum
  alias old_plus +
  
  def +(other)
    old_plus(other).succ
  end
end