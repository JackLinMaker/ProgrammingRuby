def show_regexp(string, pattern)
  match = pattern.match(string)
  
  if match
    "#{match.pre_match}->#{match[0]}<-#{match.post_match}"
  else
    "no match"
  end
end

puts show_regexp('very interesting', /t/)
puts show_regexp('Fats Waller', /a/)
puts show_regexp('Fats Waller', /lle/)
puts show_regexp('Fats Waller', /z/)

puts show_regexp('yes | no', /\|/)
puts show_regexp('yes (no)', /\(no\)/)
puts show_regexp('are your sure?', /e\?/)

str = "this is \nthe time"
show_regexp(str, /^the/)
show_regexp(str, /is$/)
show_regexp(str, /\Athis/)
show_regexp(str, /\Athe/)
