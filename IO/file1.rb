file = File.new("testfile", "r")
file.close

File.open("testfile", "r") do |file|
  # ...process the file
=begin
  while line = file.gets
    puts line
  end
=end
  #file.each_byte {|ch| print "#{ch.chr}:#{ch}"}
  file.each_line("e") {|line| puts "got #{line.dump}"}
end # << file automatically closed here.

IO.foreach("testfile") {|line| puts line}

# read into string
str = IO.read("testfile")
str.length
str[0, 30]

# read into an array
arr = IO.readlines("testfile")
arr.length
arr[0]