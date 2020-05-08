require_relative 'logic'
require 'test/unit'

# Класс Unit теста
class MyTest < Test::Unit::TestCase
  def test_001
    assert_in_delta(1.0008,func(0.001, &method(:function))[0],0.001)
  end

  def test_002
    assert_in_delta(1.00008,func(0.0001, &method(:function))[0],0.0001)
  end

end
