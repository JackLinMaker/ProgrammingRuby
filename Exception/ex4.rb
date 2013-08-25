raise
raise "bad mp3 encoding"
raise InterfaceException, "Keyboard failure", caller

raise
raise "Missing name" if name.nil?
if i >= name.size
  raise IndexError, "#{i} >= size (#{name.size})"
end

raise ArgumentError, "Name too big", caller



