# frozen_string_literal: true

require 'test/unit'

# Class Unit test
class MyTest < Test::Unit::TestCase
  def setup
    @obj1 = ClassWord.new('Hello')
    @obj2 = ClassWordAndNumber.new('Editor')
  end

  def test_class
    assert_equal('ClassWord', ClassWordAndNumber.superclass.name)
  end

  def test_for_obj1
    str = 'Слово: Hello, Кол-во символов: 5'
    assert_equal(str, @obj1.give_value)
  end

  def test_for_obj2
    str = 'Слово: Editor, Кол-во символов: 6, Кол-во гласных: 3'
    assert_equal(str, @obj2.give_value)
  end
end
