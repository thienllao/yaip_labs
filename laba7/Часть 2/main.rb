# frozen_string_literal: true

require_relative 'logic.rb'
require_relative 'test.rb'

puts 'Введите слово'
obj1 = ClassWord.new(gets.chop.to_s)
puts "Вы ввели #{obj1.word}"
puts "Значение и количество символов: #{obj1.give_value}"

puts 'Введите слово'
obj2 = ClassWordAndNumber.new(gets.chop.to_s)
puts "Вы ввели #{obj2.word}"
puts "Количество символов: #{obj2.letters}"
puts "Значение, количество символов и количество согласных: #{obj2.give_value}"
