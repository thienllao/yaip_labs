# frozen_string_literal: true

require 'test/unit'
require_relative 'logic'

# Unit
class MyTest < Test::Unit::TestCase
  def test_001
    assert_in_delta(0.81936, calc(-8,-9),0.00001)
  end

  def test_002
    assert_in_delta(-0.85335, calc(7,9),0.00001)
  end

end