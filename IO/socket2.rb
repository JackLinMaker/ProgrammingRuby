require 'net/http'

h = Net::HTTP.new('www.pragprog.com', 80)
response = h.get('/titles/ruby3/programming-ruby-3')
puts response.message
if response.message == "OK"
  puts response.body.scan(/<img alt=".*?" src="(.*?)"/m).uniq
end