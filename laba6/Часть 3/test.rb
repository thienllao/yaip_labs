# frozen_string_literal: true

# 6_3_test.rb
require_relative 'logic'
require 'minitest/autorun'
# Test class
class TestMathFunc < MiniTest::Unit::TestCase
  N = 4
  PREC = 0.001
  def setup
    @val = []
    @ans = []
    @val[0] = ->(x) { x * x }
    @ans[0] = [0.9800000000000031, 1.0000000000000009, 1.0199999999999987]
    @val[1] = ->(x) { Math.cos(x) + 3 }
    @ans[1] = [-0.47064179573124143, -0.47941754821851923, -0.48819330070584144]
    @val[2] = ->(x) { Math.sin(x) + Math.cos(x) }
    @ans[2] = [0.4117203552902793, 0.39815038736895625, 0.3845804194476443]
    @val[3] = ->(x) { x**4 + x**3 }
    @ans[3] = [1.1902980000000034, 1.2503000000000013, 1.3103019999999965]
  end

  def test_ans_and_val
    N.times do |num|
      val = @val[num]
      ans = @ans[num]
      assert_in_delta(ans[0], diﬀer(val)[0], PREC,  val.to_s)
      assert_in_delta(ans[1], diﬀer(val)[1], PREC,  val.to_s)
      assert_in_delta(ans[2], diﬀer(val)[2], PREC,  val.to_s)
    end
  end
end
