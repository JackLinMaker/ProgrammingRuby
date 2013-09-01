pig = IO.popen("/usr/local/rubybook/bin/pig", "w+")
pig.puts "ice cream after they go to bed"
pig.close_write
puts pig.gets