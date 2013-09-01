require './roman'
require 'test/unit'

class TestRoman < Test::Unit::TestCase
  def test_range
    # no exception for these two...
    Roman.new(1)
    Roman.new(4999)
    
    # but an exception for these
    assert_equals(RuntimeError) { Roman.new(0) }
    assert_equals(RuntimeError) { Roman.new(5000) }
  end
  
end

