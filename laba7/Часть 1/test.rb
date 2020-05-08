# frozen_string_literal: true

require 'test/unit'
require_relative 'logic'
# Class Unit test
class MyTest < Test::Unit::TestCase
  def setup
    @testing_obj = FilesClass.new('F.txt', '1 2 3 4 5 6 7 8 9 10 -1 -2 -3 -4 -5 -6 -7 -8 -9 -10 11 12 13 14 15 16 17 18 19 20 -11 -12 -13 -14 -15 -16 -17 -18 -19 -20')
    @testing_obj.creat_p_file
  end

  def test_exist
    assert_equal(true, File.exist?('F.txt'))
    assert_equal(true, File.exist?('P.txt'))
  end

  def test_array
    str = """1 2 3 4 5 -1 -2 -3 -4 -5 6 7 8 9 10 -6 -7 -8 -9 -10 11 12 13 14 15 -11 -12 -13 -14 -15 16 17 18 19 20 -16 -17 -18 -19 -20
1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 -1 -2 -3 -4 -5 -6 -7 -8 -9 -10 -11 -12 -13 -14 -15 -16 -17 -18 -19 -20
"""
    assert_equal(str, @testing_obj.read_p_file)
  end
end

