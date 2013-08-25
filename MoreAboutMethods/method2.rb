class Child < Parent
  def do_something(*not_used)
    super
  end
end

class Child < Parent
  def do_something(*)
    super
  end
end