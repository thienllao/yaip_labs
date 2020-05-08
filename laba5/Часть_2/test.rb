# frozen_string_literal: false

require 'test/unit'
require_relative 'logic'

# Unit
class MyTest < Test::Unit::TestCase
  def test_001
    o = [('а'..'я')].map(&:to_a).flatten
    array = []
    5.times do
      str = ''
      while str[0]!='н'

        str = (0...5).map { o[rand(o.length)] }.join
      end

     array << str
    end
    puts array.inspect
    test_str = Strings.new([array.join(" ")])
    puts "Измените слово на HI"
    test_str.change_line
    correct_array = [[array[0],"HI",array[2],"HI",array[4]]]
    assert_equal correct_array, test_str.new_array
  end

end
