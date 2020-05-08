
require_relative 'logic'
require 'test/unit'

# Класс Unit теста
class MyTest < Test::Unit::TestCase
  def test_001
    func = Func.new(0.001)
    assert_in_delta(1.0008, func.func,0.001)
  end

  def test_002
    func = Func.new(0.0001)
    assert_in_delta(1.00008, func.func,0.0001)
  end

end