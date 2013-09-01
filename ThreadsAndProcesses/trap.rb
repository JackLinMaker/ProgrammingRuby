trap("CLD") do
  pid = Process.wait
  puts "Child pid #{pid}:terminated"
end

fork { exec("sort testfile > output.txt") }
# do other sutff...

