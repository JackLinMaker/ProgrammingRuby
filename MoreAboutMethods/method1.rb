def my_new_method(arg1, arg2, arg3)
  
end

def my_other_method

end

def cool_dude(arg1="Miles", arg2="Coltrane", arg3="Roach")
  puts "#{arg1}, #{arg2}, #{arg3}"
end

cool_dude
cool_dude("Bart")
cool_dude("Bart", "Elwood")
cool_dude("Bart", "Elwood", "Linus")

def surround(word, pad_width=word.length/2)
  "[" * pad_width + word + "]" * pad_width
end

surround("elephant")
surround("fox")
surround("fox", 10)


def varargs(arg1, *rest)
  puts "arg1=#{arg1}, rest=#{rest.inspect}"
end

varargs("one")
varargs("two","one")
varargs "one", "two", "three"
