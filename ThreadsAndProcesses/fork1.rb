fork do
  puts "In Child, pid = #$$"
  exit 99
end

pid = Process.wait
puts "Child terminated, pid = #{pid}, status = #{$?.exitstatus}"