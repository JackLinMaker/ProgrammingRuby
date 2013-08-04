#require_relative 'VowelFinder.rb'
module Summable
  def sum
    inject(:+)
  end
end

class Array
  include Summable
end

class Range
  include Summable
end
=begin
class VowelFinder
  include Summable
end
=end

puts [1,2,3,4,5].sum
puts ('a'..'m').sum