str = "cat and dog"
if str =~ /cat/
  puts "There's a cat here somewhere"
end

File.foreach("testfile.txt").with_index do |line, index|
  puts "#{index}:#{line}" if line !~ /on/
end

str = "Dog and Cat"
new_str = str.sub(/Cat/, "Jack")
puts "Let's go to the #{new_str} for a pint."

str = "Dog and Cat"
new_str1 = str.sub(/a/, "*")
new_str2 = str.gsub(/a/, "*")
puts "Using sub:#{new_str1}"
puts "Using gsub:#{new_str2}"

new_str3 = str.gsub!(/a/, '*')
puts "Using gsub!:#{new_str3}"



